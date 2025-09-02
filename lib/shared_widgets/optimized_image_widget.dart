import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// A high-performance image widget that provides optimized loading, caching, and memory management.
///
/// This widget automatically handles:
/// - Network image caching with CachedNetworkImage
/// - Local image memory optimization
/// - Proper loading and error states
/// - Memory cache size limits
/// - Smooth fade animations
/// - Device pixel ratio optimization
class OptimizedImageWidget extends StatelessWidget {
  const OptimizedImageWidget({
    super.key,
    this.imageUrl,
    this.imageFile,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
    this.maxWidthDiskCache = 800,
    this.maxHeightDiskCache = 800,
    this.fadeInDuration = const Duration(milliseconds: 300),
    this.fadeOutDuration = const Duration(milliseconds: 100),
  });

  /// Network image URL
  final String? imageUrl;

  /// Local image file
  final File? imageFile;

  /// Image width
  final double? width;

  /// Image height
  final double? height;

  /// How the image should fit within the bounds
  final BoxFit fit;

  /// Border radius for the image
  final BorderRadius? borderRadius;

  /// Custom placeholder widget
  final Widget? placeholder;

  /// Custom error widget
  final Widget? errorWidget;

  /// Maximum width for disk cache
  final int maxWidthDiskCache;

  /// Maximum height for disk cache
  final int maxHeightDiskCache;

  /// Fade in animation duration
  final Duration fadeInDuration;

  /// Fade out animation duration
  final Duration fadeOutDuration;

  @override
  Widget build(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final effectiveWidth = width ?? 100.0;
    final effectiveHeight = height ?? 100.0;

    // Calculate optimized cache dimensions
    final memCacheWidth = (effectiveWidth * devicePixelRatio).round();
    final memCacheHeight = (effectiveHeight * devicePixelRatio).round();

    Widget imageWidget;

    if (imageFile != null) {
      // Local image with memory optimization
      imageWidget = Image.file(
        imageFile!,
        width: width,
        height: height,
        fit: fit,
        cacheWidth: memCacheWidth,
        cacheHeight: memCacheHeight,
      );
    } else if (imageUrl != null && imageUrl!.isNotEmpty) {
      // Network image with caching
      imageWidget = CachedNetworkImage(
        imageUrl: imageUrl!,
        width: width,
        height: height,
        fit: fit,
        memCacheWidth: memCacheWidth,
        memCacheHeight: memCacheHeight,
        maxWidthDiskCache: maxWidthDiskCache,
        maxHeightDiskCache: maxHeightDiskCache,
        placeholder: placeholder != null ? (context, url) => placeholder! : _buildDefaultPlaceholder,
        errorWidget: errorWidget != null ? (context, url, error) => errorWidget! : _buildDefaultErrorWidget,
        fadeInDuration: fadeInDuration,
        fadeOutDuration: fadeOutDuration,
      );
    } else {
      // No image available
      imageWidget = _buildDefaultErrorWidget(context, "", null);
    }

    // Apply border radius if specified
    if (borderRadius != null) {
      imageWidget = ClipRRect(borderRadius: borderRadius!, child: imageWidget);
    }

    return imageWidget;
  }

  /// Builds the default placeholder widget
  Widget _buildDefaultPlaceholder(BuildContext context, String url) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Colors.grey[200], borderRadius: borderRadius),
      child: const Center(
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff034061)),
          ),
        ),
      ),
    );
  }

  /// Builds the default error widget
  Widget _buildDefaultErrorWidget(BuildContext context, String url, dynamic error) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: borderRadius),
      child: const Center(child: Icon(Icons.error_outline, color: Colors.grey, size: 24)),
    );
  }
}

/// A specialized version for profile images with common optimizations
class OptimizedProfileImage extends StatelessWidget {
  const OptimizedProfileImage({super.key, this.imageUrl, this.imageFile, this.size = 100.0, this.borderRadius});

  final String? imageUrl;
  final File? imageFile;
  final double size;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return OptimizedImageWidget(
      imageUrl: imageUrl,
      imageFile: imageFile,
      width: size,
      height: size,
      borderRadius: borderRadius ?? BorderRadius.circular(size / 2),
      maxWidthDiskCache: 400,
      maxHeightDiskCache: 400,
    );
  }
}

/// A specialized version for thumbnail images with smaller cache sizes
class OptimizedThumbnailImage extends StatelessWidget {
  const OptimizedThumbnailImage({
    super.key,
    this.imageUrl,
    this.imageFile,
    this.width = 80.0,
    this.height = 80.0,
    this.borderRadius,
  });

  final String? imageUrl;
  final File? imageFile;
  final double width;
  final double height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return OptimizedImageWidget(
      imageUrl: imageUrl,
      imageFile: imageFile,
      width: width,
      height: height,
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      maxWidthDiskCache: 200,
      maxHeightDiskCache: 200,
    );
  }
}
