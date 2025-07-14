import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:network_logging/network_logging.dart';
import 'package:network_logging/src/ui/duplo_overlay.dart';
import 'package:network_logging/src/ui/logging_bottomsheet.dart';

/// Bottom sheet widget to display network request logs
/// Only available in development builds
class NetworkLoggingBottomSheet extends StatefulWidget {
  const NetworkLoggingBottomSheet({super.key});

  @override
  State<NetworkLoggingBottomSheet> createState() =>
      _NetworkLoggingBottomSheetState();
}

class _NetworkLoggingBottomSheetState extends State<NetworkLoggingBottomSheet> {
  List<NetworkLogEntry> _logs = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _refreshLogs();
  }

  @override
  Widget build(BuildContext context) {
    //     final theme = context.duploTheme;
    //     final textStyles = context.duploTextStyles;

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Column(
        children: [
          // Header with refresh and clear buttons
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(child: Text('Network Requests (${_logs.length})')),
                IconButton(
                  onPressed: _isLoading ? null : _refreshLogs,
                  icon: _isLoading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.refresh, color: Colors.white),
                ),
                IconButton(
                  onPressed: _clearLogs,
                  icon: const Icon(Icons.clear_all, color: Colors.white),
                ),
              ],
            ),
          ),
          // Divider
          Container(height: 1, color: const Color(0xff444444)),
          // List of network requests
          Expanded(
            child: _logs.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.network_check,
                          size: 48,
                          color: Colors.amber,
                        ),
                        SizedBox(height: 16),
                        Text('No network requests logged yet'),
                        SizedBox(height: 8),
                        Text('Make API calls to see them here'),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: _logs.length,
                    itemBuilder: (builderContext, index) {
                      final log = _logs[index];
                      return _buildLogItem(log);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogItem(NetworkLogEntry log) {
    final uri = Uri.parse(log.url);
    final path = uri.path.isEmpty ? '/' : uri.path;
    final statusColor = _getStatusColor(log.statusCode);

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xff444444)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(shape: BoxShape.circle, color: statusColor),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: _getMethodColor(log.method),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(log.method),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(path, maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                Text(log.statusCode?.toString() ?? 'Pending'),
                const SizedBox(width: 8),
                Text('${log.duration ?? 0}ms'),
                const Spacer(),
                Text(_formatTime(log.requestTimestamp)),
              ],
            ),
            if (log.errorMessage != null) ...[
              const SizedBox(height: 4),
              Text(
                log.errorMessage!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ],
        ),
        onTap: () => _showLogDetails(log),
      ),
    );
  }

  Color _getStatusColor(int? statusCode) {
    if (statusCode == null) return Colors.grey;
    if (statusCode >= 200 && statusCode < 300) return Colors.green;
    if (statusCode >= 400 && statusCode < 500) return Colors.greenAccent;
    if (statusCode >= 500) return Colors.red;
    return Colors.grey;
  }

  Color _getMethodColor(String method) {
    switch (method.toUpperCase()) {
      case 'GET':
        return Colors.blue;
      case 'POST':
        return Colors.green;
      case 'PUT':
        return Colors.orange;
      case 'DELETE':
        return Colors.red;
      case 'PATCH':
        return Colors.purple;
      default:
        return Colors.blueGrey;
    }
  }

  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 1) {
      return '${difference.inSeconds}s ago';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}m ago';
    }
    return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
  }

  void _showLogDetails(NetworkLogEntry log) {
    LoggingBottomsheet.showModalSheetV2<void>(
      context,
      appBar: AppBar(
        title: const Text("Request Details"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      content: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailSection('URL', log.url),
            _buildDetailSection('Method', log.method),
            _buildDetailSection('Status', '${log.statusCode ?? 'Pending'}'),
            _buildDetailSection('Duration', '${log.duration ?? 0}ms'),
            _buildDetailSection(
              'Request Time',
              _formatDateTime(log.requestTimestamp),
            ),
            if (log.responseTimestamp != null)
              _buildDetailSection(
                'Response Time',
                _formatDateTime(log.responseTimestamp!),
              ),
            if (log.errorMessage != null)
              _buildDetailSection('Error', log.errorMessage!),
            if (log.requestHeaders.isNotEmpty)
              _buildDetailSection(
                'Request Headers',
                log.requestHeaders.toString(),
              ),
            if (log.responseHeaders != null && log.responseHeaders!.isNotEmpty)
              _buildDetailSection(
                'Response Headers',
                log.responseHeaders?.toString() ?? '',
              ),
            if (log.requestBody != null)
              _buildDetailSection('Request Body', log.requestBody!),
            if (log.responseBody != null)
              _buildDetailSection('Response Body', log.responseBody!),
            _buildCurlSection(log),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailSection(String label, String value) {
    final bool showCopyButton =
        label == 'Request Body' || label == 'Response Body';

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              if (showCopyButton)
                Builder(
                  builder: (ctx) => IconButton(
                    onPressed: () => _copyToClipboard(ctx, value),
                    icon: const Icon(
                      Icons.copy,
                      size: 18,
                      color: Colors.white24,
                    ),
                    tooltip: 'Copy',
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xff444444)),
            ),
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, color: Colors.greenAccent),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurlSection(NetworkLogEntry log) {
    final curlCommand = _generateCurlCommand(log);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('cURL Command'),
              Builder(
                builder: (ctx) => IconButton(
                  onPressed: () => _copyToClipboard(ctx, curlCommand),
                  icon: const Icon(Icons.copy, size: 18, color: Colors.white10),
                  tooltip: 'Copy cURL',
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(
                    minWidth: 24,
                    minHeight: 24,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.blueGrey),
            ),
            child: Text(
              curlCommand,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'monospace',
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
        '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
  }

  String _generateCurlCommand(NetworkLogEntry log) {
    try {
      final List<String> components = ['curl -i'];

      // Add method if not GET
      if (log.method.toUpperCase() != 'GET') {
        components.add('-X ${log.method}');
      }

      // Add headers (excluding Cookie for security)
      log.requestHeaders.forEach((k, v) {
        if (k != 'Cookie') {
          components.add('-H "$k: $v"');
        }
      });

      // Add request body if present
      if (log.requestBody != null && log.requestBody!.isNotEmpty) {
        try {
          // Try to parse as JSON to validate and escape properly
          final parsedData = json.decode(log.requestBody!);
          final data = json.encode(parsedData).replaceAll('"', '\\"');
          components.add('-d "$data"');
        } catch (e) {
          // If not valid JSON, treat as raw string and escape quotes
          final data = log.requestBody!.replaceAll('"', '\\"');
          components.add('-d "$data"');
        }
      }

      // Add URL
      components.add('"${log.url}"');

      return components.join(' \\\n\t');
    } catch (e) {
      return 'Error generating cURL command: $e';
    }
  }

  void _copyToClipboard(BuildContext ctx, String content) {
    // Copy content as-is without any formatting to avoid FormatExceptions
    Clipboard.setData(ClipboardData(text: content));

    // Calculate position of copy button for overlay
    final box = ctx.findRenderObject() as RenderBox?;
    final position = box?.localToGlobal(Offset.zero);

    DuploOverlay.show(
      ctx,
      'Copied',
      position: position,
      offset: const Offset(-24, -42),
    );
  }

  Future<void> _refreshLogs() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final storage = GetIt.instance<NetworkLogStorage>();
      final logs = await storage.getAll();

      if (mounted) {
        setState(() {
          _logs = logs.reversed.toList(); // Show newest first
        });
      }
    } catch (e) {
      if (mounted) {
        debugPrint('Error refreshing logs: $e');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _clearLogs() async {
    try {
      final storage = GetIt.instance<NetworkLogStorage>();
      await storage.clear();
      await _refreshLogs();
    } catch (e) {
      debugPrint('Error clearing logs: $e');
    }
  }
}

/// Static method to show the network logging bottom sheet
class NetworkLoggingSheet {
  static void show(BuildContext context) {
    LoggingBottomsheet.showModalSheetV2<void>(
      context,
      appBar: AppBar(
        title: const Text('Network Logs'),
        automaticallyImplyLeading: false,
        actions: [
          Builder(
            builder: (builderContext) => IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      content: const NetworkLoggingBottomSheet(),
    );
  }
}
