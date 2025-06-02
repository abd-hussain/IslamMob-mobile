import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayerWidget extends StatefulWidget {
  final AudioPlayer player;

  const PlayerWidget({required this.player, super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  late final AudioPlayer _player;
  late StreamSubscription _durationSub;
  late StreamSubscription _positionSub;
  late StreamSubscription _completeSub;
  late StreamSubscription _stateSub;

  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  PlayerState _playerState = PlayerState.stopped;

  bool get _isPlaying => _playerState == PlayerState.playing;
  bool get _isPaused => _playerState == PlayerState.paused;

  double get _progress => (_duration.inMilliseconds == 0) ? 0.0 : _position.inMilliseconds / _duration.inMilliseconds;

  String get _formattedPosition => _formatDuration(_position);
  String get _formattedDuration => _formatDuration(_duration);

  @override
  void initState() {
    super.initState();
    _player = widget.player;

    _player.getDuration().then((d) {
      if (d != null) _duration = d;
    });

    _player.getCurrentPosition().then((p) {
      if (p != null) _position = p;
    });

    _playerState = _player.state;

    _listenToStreams();
  }

  void _listenToStreams() {
    _durationSub = _player.onDurationChanged.listen((d) {
      setState(() => _duration = d);
    });

    _positionSub = _player.onPositionChanged.listen((p) {
      setState(() => _position = p);
    });

    _completeSub = _player.onPlayerComplete.listen((_) {
      setState(() {
        _playerState = PlayerState.stopped;
        _position = Duration.zero;
      });
    });

    _stateSub = _player.onPlayerStateChanged.listen((state) {
      setState(() => _playerState = state);
    });
  }

  @override
  void dispose() {
    _durationSub.cancel();
    _positionSub.cancel();
    _completeSub.cancel();
    _stateSub.cancel();
    super.dispose();
  }

  Future<void> _play() async {
    await _player.resume();
  }

  Future<void> _pause() async {
    await _player.pause();
  }

  Future<void> _stop() async {
    await _player.stop();
    setState(() => _position = Duration.zero);
  }

  void _seek(double value) {
    final newPosition = Duration(milliseconds: (_duration.inMilliseconds * value).round());
    _player.seek(newPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildControls(),
        Slider(
          onChanged: _duration.inMilliseconds == 0 ? null : _seek,
          value: _progress.clamp(0.0, 1.0),
        ),
        Text(
          (_duration != Duration.zero) ? '$_formattedPosition / $_formattedDuration' : '',
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          key: const Key('play_button'),
          onPressed: _isPlaying ? _pause : _play,
          iconSize: 35,
          icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
          color: const Color(0xff292929),
        ),
        IconButton(
          key: const Key('stop_button'),
          onPressed: (_isPlaying || _isPaused) ? _stop : null,
          iconSize: 35,
          icon: const Icon(Icons.stop),
          color: const Color(0xff292929),
        ),
      ],
    );
  }

  String _formatDuration(Duration d) {
    return d.toString().split('.').first.padLeft(8, "0");
  }
}
