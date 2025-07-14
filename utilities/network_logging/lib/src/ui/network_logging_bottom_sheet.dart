// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get_it/get_it.dart';
// import 'package:network_logging/network_logging.dart';

// /// Bottom sheet widget to display network request logs
// /// Only available in development builds
// class NetworkLoggingBottomSheet extends StatefulWidget {
//   const NetworkLoggingBottomSheet({super.key});

//   @override
//   State<NetworkLoggingBottomSheet> createState() => _NetworkLoggingBottomSheetState();
// }

// class _NetworkLoggingBottomSheetState extends State<NetworkLoggingBottomSheet> {
//   List<NetworkLogEntry> _logs = [];
//   bool _isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     _refreshLogs();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = context.duploTheme;
//     final textStyles = context.duploTextStyles;

//     return Container(
//       height: MediaQuery.sizeOf(context).height * 0.8,
//       child: Column(
//         children: [
//           // Header with refresh and clear buttons
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: DuploText(
//                     text: 'Network Requests (${_logs.length})',
//                     style: textStyles.textLg,
//                     fontWeight: DuploFontWeight.semiBold,
//                     color: theme.text.textPrimary,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: _isLoading ? null : () => _refreshLogs(),
//                   icon: _isLoading
//                       ? SizedBox(
//                           width: 16,
//                           height: 16,
//                           child: CircularProgressIndicator(strokeWidth: 2, color: theme.foreground.fgPrimary),
//                         )
//                       : Icon(Icons.refresh, color: theme.foreground.fgPrimary),
//                 ),
//                 IconButton(
//                   onPressed: () => _clearLogs(),
//                   icon: Icon(Icons.clear_all, color: theme.foreground.fgPrimary),
//                 ),
//               ],
//             ),
//           ),

//           // Divider
//           Container(height: 1, color: theme.border.borderSecondary),

//           // List of network requests
//           Expanded(
//             child: _logs.isEmpty
//                 ? Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.network_check, size: 48, color: theme.foreground.fgTertiary),
//                         const SizedBox(height: 16),
//                         DuploText(
//                           text: 'No network requests logged yet',
//                           style: textStyles.textMd,
//                           color: theme.text.textSecondary,
//                         ),
//                         const SizedBox(height: 8),
//                         DuploText(
//                           text: 'Make API calls to see them here',
//                           style: textStyles.textSm,
//                           color: theme.text.textTertiary,
//                         ),
//                       ],
//                     ),
//                   )
//                 : ListView.builder(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     itemCount: _logs.length,
//                     itemBuilder: (builderContext, index) {
//                       final log = _logs[index];
//                       return _buildLogItem(log, theme, textStyles);
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLogItem(NetworkLogEntry log, DuploThemeData theme, TextStyles textStyles) {
//     final uri = Uri.parse(log.url);
//     final path = uri.path.isEmpty ? '/' : uri.path;
//     final statusColor = _getStatusColor(log.statusCode, theme);

//     return Container(
//       margin: const EdgeInsets.only(bottom: 8),
//       decoration: BoxDecoration(
//         color: theme.background.bgSecondary,
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: theme.border.borderSecondary, width: 1),
//       ),
//       child: ListTile(
//         contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         leading: Container(
//           width: 12,
//           height: 12,
//           decoration: BoxDecoration(shape: BoxShape.circle, color: statusColor),
//         ),
//         title: Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//               decoration: BoxDecoration(
//                 color: _getMethodColor(log.method, theme),
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: DuploText(
//                 text: log.method,
//                 style: textStyles.textXs,
//                 fontWeight: DuploFontWeight.medium,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(width: 8),
//             Expanded(
//               child: DuploText(
//                 text: path,
//                 style: textStyles.textSm,
//                 fontWeight: DuploFontWeight.medium,
//                 color: theme.text.textPrimary,
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//           ],
//         ),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 4),
//             Row(
//               children: [
//                 DuploText(
//                   text: log.statusCode?.toString() ?? 'Pending',
//                   style: textStyles.textXs,
//                   color: statusColor,
//                   fontWeight: DuploFontWeight.medium,
//                 ),
//                 const SizedBox(width: 8),
//                 DuploText(text: '${log.duration ?? 0}ms', style: textStyles.textXs, color: theme.text.textTertiary),
//                 const Spacer(),
//                 DuploText(
//                   text: _formatTime(log.requestTimestamp),
//                   style: textStyles.textXs,
//                   color: theme.text.textTertiary,
//                 ),
//               ],
//             ),
//             if (log.errorMessage != null) ...[
//               const SizedBox(height: 4),
//               DuploText(
//                 text: log.errorMessage!,
//                 style: textStyles.textXs,
//                 color: theme.utility.utilityError500,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ],
//           ],
//         ),
//         onTap: () => _showLogDetails(log),
//       ),
//     );
//   }

//   Color _getStatusColor(int? statusCode, DuploThemeData theme) {
//     if (statusCode == null) return theme.foreground.fgTertiary;
//     if (statusCode >= 200 && statusCode < 300) return theme.utility.utilitySuccess500;
//     if (statusCode >= 400 && statusCode < 500) return theme.utility.utilityWarning500;
//     if (statusCode >= 500) return theme.utility.utilityError500;
//     return theme.foreground.fgTertiary;
//   }

//   Color _getMethodColor(String method, DuploThemeData theme) {
//     switch (method.toUpperCase()) {
//       case 'GET':
//         return Colors.blue;
//       case 'POST':
//         return Colors.green;
//       case 'PUT':
//         return Colors.orange;
//       case 'DELETE':
//         return Colors.red;
//       case 'PATCH':
//         return Colors.purple;
//       default:
//         return theme.foreground.fgSecondary;
//     }
//   }

//   String _formatTime(DateTime timestamp) {
//     final now = DateTime.now();
//     final difference = now.difference(timestamp);

//     if (difference.inMinutes < 1) {
//       return '${difference.inSeconds}s ago';
//     } else if (difference.inHours < 1) {
//       return '${difference.inMinutes}m ago';
//     }
//     return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
//   }

//   void _showLogDetails(NetworkLogEntry log) {
//     final theme = context.duploTheme;
//     final textStyles = context.duploTextStyles;

//     DuploSheet.showModalSheetV2<void>(
//       context,
//       appBar: DuploAppBar(
//         title: 'Request Details',
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.close, color: theme.foreground.fgPrimary),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ],
//       ),
//       content: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildDetailSection('URL', log.url, theme, textStyles),
//             _buildDetailSection('Method', log.method, theme, textStyles),
//             _buildDetailSection('Status', '${log.statusCode ?? 'Pending'}', theme, textStyles),
//             _buildDetailSection('Duration', '${log.duration ?? 0}ms', theme, textStyles),
//             _buildDetailSection('Request Time', _formatDateTime(log.requestTimestamp), theme, textStyles),
//             if (log.responseTimestamp != null)
//               _buildDetailSection('Response Time', _formatDateTime(log.responseTimestamp!), theme, textStyles),
//             if (log.errorMessage != null) _buildDetailSection('Error', log.errorMessage!, theme, textStyles),
//             if (log.requestHeaders.isNotEmpty)
//               _buildDetailSection('Request Headers', log.requestHeaders.toString(), theme, textStyles),
//             if (log.responseHeaders != null && log.responseHeaders!.isNotEmpty)
//               _buildDetailSection('Response Headers', log.responseHeaders?.toString() ?? '', theme, textStyles),
//             if (log.requestBody != null) _buildDetailSection('Request Body', log.requestBody!, theme, textStyles),
//             if (log.responseBody != null) _buildDetailSection('Response Body', log.responseBody!, theme, textStyles),
//             _buildCurlSection(log, theme, textStyles),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDetailSection(String label, String value, DuploThemeData theme, TextStyles textStyles) {
//     final bool showCopyButton = label == 'Request Body' || label == 'Response Body';

//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               DuploText(
//                 text: label,
//                 style: textStyles.textSm,
//                 fontWeight: DuploFontWeight.semiBold,
//                 color: theme.text.textPrimary,
//               ),
//               if (showCopyButton)
//                 Builder(
//                   builder: (ctx) => IconButton(
//                     onPressed: () => _copyToClipboard(ctx, value),
//                     icon: Icon(Icons.copy, size: 18, color: theme.foreground.fgSecondary),
//                     tooltip: 'Copy',
//                     padding: EdgeInsets.zero,
//                     constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
//                   ),
//                 ),
//             ],
//           ),
//           const SizedBox(height: 4),
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: theme.background.bgTertiary,
//               borderRadius: BorderRadius.circular(6),
//               border: Border.all(color: theme.border.borderSecondary),
//             ),
//             child: Text(
//               value,
//               style: TextStyle(
//                 fontSize: textStyles.textXs.fontSize,
//                 fontFamily: 'monospace',
//                 color: theme.text.textSecondary,
//                 height: textStyles.textXs.lineHeight,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCurlSection(NetworkLogEntry log, DuploThemeData theme, TextStyles textStyles) {
//     final curlCommand = _generateCurlCommand(log);

//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               DuploText(
//                 text: 'cURL Command',
//                 style: textStyles.textSm,
//                 fontWeight: DuploFontWeight.semiBold,
//                 color: theme.text.textPrimary,
//               ),
//               Builder(
//                 builder: (ctx) => IconButton(
//                   onPressed: () => _copyToClipboard(ctx, curlCommand),
//                   icon: Icon(Icons.copy, size: 18, color: theme.foreground.fgSecondary),
//                   tooltip: 'Copy cURL',
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 4),
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: theme.background.bgTertiary,
//               borderRadius: BorderRadius.circular(6),
//               border: Border.all(color: theme.border.borderSecondary),
//             ),
//             child: Text(
//               curlCommand,
//               style: TextStyle(
//                 fontSize: textStyles.textXs.fontSize,
//                 fontFamily: 'monospace',
//                 color: theme.text.textSecondary,
//                 height: textStyles.textXs.lineHeight,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   String _formatDateTime(DateTime dateTime) {
//     return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
//         '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
//   }

//   String _generateCurlCommand(NetworkLogEntry log) {
//     try {
//       List<String> components = ['curl -i'];

//       // Add method if not GET
//       if (log.method.toUpperCase() != 'GET') {
//         components.add('-X ${log.method}');
//       }

//       // Add headers (excluding Cookie for security)
//       log.requestHeaders.forEach((k, v) {
//         if (k != 'Cookie') {
//           components.add('-H "$k: $v"');
//         }
//       });

//       // Add request body if present
//       if (log.requestBody != null && log.requestBody!.isNotEmpty) {
//         try {
//           // Try to parse as JSON to validate and escape properly
//           final parsedData = json.decode(log.requestBody!);
//           final data = json.encode(parsedData).replaceAll('"', '\\"');
//           components.add('-d "$data"');
//         } catch (e) {
//           // If not valid JSON, treat as raw string and escape quotes
//           final data = log.requestBody!.replaceAll('"', '\\"');
//           components.add('-d "$data"');
//         }
//       }

//       // Add URL
//       components.add('"${log.url}"');

//       return components.join(' \\\n\t');
//     } catch (e) {
//       return 'Error generating cURL command: $e';
//     }
//   }

//   void _copyToClipboard(BuildContext ctx, String content) {
//     // Copy content as-is without any formatting to avoid FormatExceptions
//     Clipboard.setData(ClipboardData(text: content));

//     // Calculate position of copy button for overlay
//     final box = ctx.findRenderObject() as RenderBox?;
//     final position = box?.localToGlobal(Offset.zero);

//     DuploOverlay.show(ctx, 'Copied', position: position, offset: const Offset(-24, -42));
//   }

//   Future<void> _refreshLogs() async {
//     if (_isLoading) return;

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final storage = GetIt.instance<NetworkLogStorage>();
//       final logs = await storage.getAll();

//       if (mounted) {
//         setState(() {
//           _logs = logs.reversed.toList(); // Show newest first
//         });
//       }
//     } catch (e) {
//       if (mounted) {
//         debugPrint('Error refreshing logs: $e');
//       }
//     } finally {
//       if (mounted) {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }
//   }

//   Future<void> _clearLogs() async {
//     try {
//       final storage = GetIt.instance<NetworkLogStorage>();
//       await storage.clear();
//       await _refreshLogs();
//     } catch (e) {
//       debugPrint('Error clearing logs: $e');
//     }
//   }
// }

// /// Static method to show the network logging bottom sheet
// class NetworkLoggingSheet {
//   static void show(BuildContext context) {
//     DuploSheet.showModalSheetV2<void>(
//       context,
//       appBar: DuploAppBar(
//         title: 'Network Logs',
//         automaticallyImplyLeading: false,
//         actions: [
//           Builder(
//             builder: (builderContext) => IconButton(
//               icon: Icon(Icons.close, color: builderContext.duploTheme.foreground.fgPrimary),
//               onPressed: () => Navigator.pop(context),
//             ),
//           ),
//         ],
//       ),
//       content: const NetworkLoggingBottomSheet(),
//     );
//   }
// }
