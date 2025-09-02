import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

/// Centralized audio service for managing audio playback and preventing memory leaks.
///
/// This service provides a singleton pattern for audio management, ensuring
/// proper disposal of AudioPlayer instances and preventing memory leaks
/// throughout the Islamic app.
class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal();

  final Map<String, AudioPlayer> _players = {};
  final Map<String, StreamSubscription> _subscriptions = {};

  /// Play a short sound effect (like click sounds) with automatic disposal
  Future<void> playSoundEffect(String assetPath) async {
    final playerId = 'sound_effect_${DateTime.now().millisecondsSinceEpoch}';

    try {
      final player = AudioPlayer();
      _players[playerId] = player;

      await player.play(AssetSource(assetPath));

      // Auto-dispose after a short delay
      Timer(const Duration(seconds: 2), () {
        _disposePlayer(playerId);
      });
    } catch (e) {
      debugPrint('Error playing sound effect: $e');
      _disposePlayer(playerId);
    }
  }

  /// Get or create a persistent audio player for longer audio content
  AudioPlayer getPersistentPlayer(String playerId) {
    if (!_players.containsKey(playerId)) {
      final player = AudioPlayer();
      _players[playerId] = player;
    }
    return _players[playerId]!;
  }

  /// Dispose a specific player
  void disposePlayer(String playerId) {
    _disposePlayer(playerId);
  }

  /// Dispose all players and subscriptions
  void disposeAll() {
    for (final playerId in _players.keys.toList()) {
      _disposePlayer(playerId);
    }
    _players.clear();
    _subscriptions.clear();
  }

  /// Internal method to dispose a player safely
  void _disposePlayer(String playerId) {
    try {
      // Cancel any subscriptions for this player
      if (_subscriptions.containsKey(playerId)) {
        _subscriptions[playerId]?.cancel();
        _subscriptions.remove(playerId);
      }

      // Dispose the player
      if (_players.containsKey(playerId)) {
        _players[playerId]?.dispose();
        _players.remove(playerId);
      }
    } catch (e) {
      debugPrint('Error disposing player $playerId: $e');
    }
  }

  /// Get the number of active players (for debugging)
  int get activePlayerCount => _players.length;
}
