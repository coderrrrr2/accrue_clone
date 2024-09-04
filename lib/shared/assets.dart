// Define your SVG assets
String googleSvg = 'google_logo'.svg;

extension ImageExtension on String {
  /// Returns an Image widget for a PNG asset.
  String get png => 'assets/pngs/$this.png';
  String get svg => 'assets/svgs/$this.svg';

  /// Returns an Image widget for a SVG asset.
}
