part of 'hc_options.dart';

/// A latitude/longitude object.
class HCMapLonLatObject implements HCOption {
  const HCMapLonLatObject({
    this.lat,
    this.lon,
  });

  /// The latitude.
  final num? lat;

  /// The longitude.
  final num? lon;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (lat != null) {
      json['lat'] = lat;
    }
    if (lon != null) {
      json['lon'] = lon;
    }
    return json;
  }
}

/// (Highmaps) General options for the map navigation buttons. Individual options can be given from the mapNavigation.buttons option set.
class HCMapNavigationButtonOptions implements HCOption {
  const HCMapNavigationButtonOptions({
    this.align,
    this.alignTo,
    this.height,
    this.padding,
    this.style,
    this.theme,
    this.verticalAlign,
    this.width,
    this.x,
  });

  /// (Highmaps) The alignment of the navigation buttons.
  final String? align;

  /// (Highmaps) What box to align the buttons to. Possible values are `plotBox` and `spacingBox`.
  final String? alignTo;

  /// (Highmaps) The pixel height of the map navigation buttons.
  final num? height;

  /// (Highmaps) Padding for the navigation buttons.
  final num? padding;

  /// (Highmaps) Text styles for the map navigation buttons.
  final HCCSSObject? style;

  /// (Highmaps) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
  final HCSVGAttributes? theme;

  /// (Highmaps) The vertical alignment of the buttons. Individual alignment can be adjusted by each button's `y` offset.
  final String? verticalAlign;

  /// (Highmaps) The width of the map navigation buttons.
  final num? width;

  /// (Highmaps) The X offset of the buttons relative to its `align` setting.
  final num? x;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (theme != null) {
      json['theme'] = theme!.toJson();
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (x != null) {
      json['x'] = x;
    }
    return json;
  }
}

/// (Highmaps) The individual buttons for the map navigation. This usually includes the zoom in and zoom out buttons. Properties for each button is inherited from mapNavigation.buttonOptions, while individual options can be overridden. But default, the `onclick`, `text` and `y` options are individual.
class HCMapNavigationButtonsOptions implements HCOption {
  const HCMapNavigationButtonsOptions({
    this.zoomIn,
    this.zoomOut,
  });

  /// (Highmaps) Options for the zoom in button. Properties for the zoom in and zoom out buttons are inherited from mapNavigation.buttonOptions, while individual options can be overridden. By default, the `onclick`, `text` and `y` options are individual.
  final HCMapNavigationButtonsZoomInOptions? zoomIn;

  /// (Highmaps) Options for the zoom out button. Properties for the zoom in and zoom out buttons are inherited from mapNavigation.buttonOptions, while individual options can be overridden. By default, the `onclick`, `text` and `y` options are individual.
  final HCMapNavigationButtonsZoomOutOptions? zoomOut;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (zoomIn != null) {
      json['zoomIn'] = zoomIn!.toJson();
    }
    if (zoomOut != null) {
      json['zoomOut'] = zoomOut!.toJson();
    }
    return json;
  }
}

/// (Highmaps) Options for the zoom in button. Properties for the zoom in and zoom out buttons are inherited from mapNavigation.buttonOptions, while individual options can be overridden. By default, the `onclick`, `text` and `y` options are individual.
class HCMapNavigationButtonsZoomInOptions implements HCOption {
  const HCMapNavigationButtonsZoomInOptions({
    this.align,
    this.alignTo,
    this.height,
    this.onclick,
    this.padding,
    this.style,
    this.text,
    this.theme,
    this.verticalAlign,
    this.width,
    this.x,
    this.y,
  });

  /// (Highmaps) The alignment of the navigation buttons.
  final String? align;

  /// (Highmaps) What box to align the buttons to. Possible values are `plotBox` and `spacingBox`.
  final String? alignTo;

  /// (Highmaps) The pixel height of the map navigation buttons.
  final num? height;

  /// (Highmaps) Click handler for the button.
  final dynamic onclick;

  /// (Highmaps) Padding for the navigation buttons.
  final num? padding;

  /// (Highmaps) Text styles for the map navigation buttons.
  final HCCSSObject? style;

  /// (Highmaps) The text for the button. The tooltip (title) is a language option given by lang.zoomIn.
  final String? text;

  /// (Highmaps) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
  final HCSVGAttributes? theme;

  /// (Highmaps) The vertical alignment of the buttons. Individual alignment can be adjusted by each button's `y` offset.
  final String? verticalAlign;

  /// (Highmaps) The width of the map navigation buttons.
  final num? width;

  /// (Highmaps) The X offset of the buttons relative to its `align` setting.
  final num? x;

  /// (Highmaps) The position of the zoomIn button relative to the vertical alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (onclick != null) {
      json['onclick'] = hcJsonValue(onclick);
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (theme != null) {
      json['theme'] = theme!.toJson();
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highmaps) Options for the zoom out button. Properties for the zoom in and zoom out buttons are inherited from mapNavigation.buttonOptions, while individual options can be overridden. By default, the `onclick`, `text` and `y` options are individual.
class HCMapNavigationButtonsZoomOutOptions implements HCOption {
  const HCMapNavigationButtonsZoomOutOptions({
    this.align,
    this.alignTo,
    this.height,
    this.onclick,
    this.padding,
    this.style,
    this.text,
    this.theme,
    this.verticalAlign,
    this.width,
    this.x,
    this.y,
  });

  /// (Highmaps) The alignment of the navigation buttons.
  final String? align;

  /// (Highmaps) What box to align the buttons to. Possible values are `plotBox` and `spacingBox`.
  final String? alignTo;

  /// (Highmaps) The pixel height of the map navigation buttons.
  final num? height;

  /// (Highmaps) Click handler for the button.
  final dynamic onclick;

  /// (Highmaps) Padding for the navigation buttons.
  final num? padding;

  /// (Highmaps) Text styles for the map navigation buttons.
  final HCCSSObject? style;

  /// (Highmaps) The text for the button. The tooltip (title) is a language option given by lang.zoomOut.
  final String? text;

  /// (Highmaps) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
  final HCSVGAttributes? theme;

  /// (Highmaps) The vertical alignment of the buttons. Individual alignment can be adjusted by each button's `y` offset.
  final String? verticalAlign;

  /// (Highmaps) The width of the map navigation buttons.
  final num? width;

  /// (Highmaps) The X offset of the buttons relative to its `align` setting.
  final num? x;

  /// (Highmaps) The position of the zoomOut button relative to the vertical alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (onclick != null) {
      json['onclick'] = hcJsonValue(onclick);
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (theme != null) {
      json['theme'] = theme!.toJson();
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highmaps) The `mapNavigation` option handles buttons for navigation in addition to `mousewheel` and `doubleclick` handlers for map zooming.
class HCMapNavigationOptions implements HCOption {
  const HCMapNavigationOptions({
    this.buttonOptions,
    this.buttons,
    this.enableButtons,
    this.enabled,
    this.enableDoubleClickZoom,
    this.enableDoubleClickZoomTo,
    this.enableMouseWheelZoom,
    this.enableTouchZoom,
    this.mouseWheelSensitivity,
  });

  /// (Highmaps) General options for the map navigation buttons. Individual options can be given from the mapNavigation.buttons option set.
  final HCMapNavigationButtonOptions? buttonOptions;

  /// (Highmaps) The individual buttons for the map navigation. This usually includes the zoom in and zoom out buttons. Properties for each button is inherited from mapNavigation.buttonOptions, while individual options can be overridden. But default, the `onclick`, `text` and `y` options are individual.
  final HCMapNavigationButtonsOptions? buttons;

  /// (Highmaps) Whether to enable navigation buttons. By default it inherits the enabled setting.
  final bool? enableButtons;

  /// (Highmaps) Whether to enable map navigation. The default is not to enable navigation, as many choropleth maps are simple and don't need it. Additionally, when touch zoom and mouse wheel zoom is enabled, it breaks the default behavior of these interactions in the website, and the implementer should b
  final bool? enabled;

  /// (Highmaps) Enables zooming in on an area on double clicking in the map. By default it inherits the enabled setting.
  final bool? enableDoubleClickZoom;

  /// (Highmaps) Whether to zoom in on an area when that area is double clicked.
  final bool? enableDoubleClickZoomTo;

  /// (Highmaps) Enables zooming by mouse wheel. By default it inherits the enabled setting.
  final bool? enableMouseWheelZoom;

  /// (Highmaps) Whether to enable multitouch zooming. Note that if the chart covers the viewport, this prevents the user from using multitouch and touchdrag on the web page, so you should make sure the user is not trapped inside the chart. By default it inherits the enabled setting.
  final bool? enableTouchZoom;

  /// (Highmaps) Sensitivity of mouse wheel or trackpad scrolling. 1 is no sensitivity, while with 2, one mouse wheel delta will zoom in 50%.
  final num? mouseWheelSensitivity;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonOptions != null) {
      json['buttonOptions'] = buttonOptions!.toJson();
    }
    if (buttons != null) {
      json['buttons'] = buttons!.toJson();
    }
    if (enableButtons != null) {
      json['enableButtons'] = enableButtons;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (enableDoubleClickZoom != null) {
      json['enableDoubleClickZoom'] = enableDoubleClickZoom;
    }
    if (enableDoubleClickZoomTo != null) {
      json['enableDoubleClickZoomTo'] = enableDoubleClickZoomTo;
    }
    if (enableMouseWheelZoom != null) {
      json['enableMouseWheelZoom'] = enableMouseWheelZoom;
    }
    if (enableTouchZoom != null) {
      json['enableTouchZoom'] = enableTouchZoom;
    }
    if (mouseWheelSensitivity != null) {
      json['mouseWheelSensitivity'] = mouseWheelSensitivity;
    }
    return json;
  }
}

/// (Highmaps) Generic options for the placement and appearance of map insets like non-contiguous territories.
class HCMapViewInsetOptions implements HCOption {
  const HCMapViewInsetOptions({
    this.borderColor,
    this.borderWidth,
    this.padding,
    this.relativeTo,
    this.units,
  });

  /// (Highmaps) The border color of the insets.
  final dynamic borderColor;

  /// (Highmaps) The pixel border width of the insets.
  final num? borderWidth;

  /// (Highmaps) The padding of the insets. Can be either a number of pixels, a percentage string, or an array of either. If an array is given, it sets the top, right, bottom, left paddings respectively.
  final dynamic padding;

  /// (Highmaps) What coordinate system the `field` and `borderPath` should relate to.
  final String? relativeTo;

  /// (Highmaps) What units to use for the `field` and `borderPath` geometries. If `percent` (default), they relate to the box given in `relativeTo`. If `pixels`, they are absolute values.
  final String? units;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (units != null) {
      json['units'] = units;
    }
    return json;
  }
}

/// (Highmaps) The individual MapView insets, typically used for non-contiguous areas of a country. Each item inherits from the generic `insetOptions`.
class HCMapViewInsetsOptions implements HCOption {
  const HCMapViewInsetsOptions({
    this.borderColor,
    this.borderPath,
    this.borderWidth,
    this.field,
    this.geoBounds,
    this.id,
    this.padding,
    this.projection,
    this.relativeTo,
    this.units,
  });

  /// (Highmaps) The border color of the insets.
  final dynamic borderColor;

  /// (Highmaps) A geometry object of type `MultiLineString` defining the border path of the inset in terms of `units`. If undefined, a border is rendered around the `field` geometry. It is recommended that the `borderPath` partly follows the outline of the `field` in order to make pointer positioning con
  final dynamic borderPath;

  /// (Highmaps) The pixel border width of the insets.
  final num? borderWidth;

  /// (Highmaps) A geometry object of type `Polygon` defining where in the chart the inset should be rendered, in terms of `units` and relative to the `relativeTo` setting. If a `borderPath` is omitted, a border is rendered around the field. If undefined, the inset is rendered in the full plot area.
  final dynamic field;

  /// (Highmaps) A geometry object of type `Polygon` encircling the shapes that should be rendered in the inset, in terms of geographic coordinates. Geometries within this geometry are removed from the default map view and rendered in the inset.
  final dynamic geoBounds;

  /// (Highmaps) The id of the inset, used for internal reference.
  final String? id;

  /// (Highmaps) The padding of the insets. Can be either a number of pixels, a percentage string, or an array of either. If an array is given, it sets the top, right, bottom, left paddings respectively.
  final dynamic padding;

  /// (Highmaps) The projection options for the inset.
  final dynamic projection;

  /// (Highmaps) What coordinate system the `field` and `borderPath` should relate to.
  final String? relativeTo;

  /// (Highmaps) What units to use for the `field` and `borderPath` geometries. If `percent` (default), they relate to the box given in `relativeTo`. If `pixels`, they are absolute values.
  final String? units;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderPath != null) {
      json['borderPath'] = hcJsonValue(borderPath);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (field != null) {
      json['field'] = hcJsonValue(field);
    }
    if (geoBounds != null) {
      json['geoBounds'] = hcJsonValue(geoBounds);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (projection != null) {
      json['projection'] = hcJsonValue(projection);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (units != null) {
      json['units'] = units;
    }
    return json;
  }
}

/// (Highmaps) The projection options for the inset.
class HCMapViewInsetsProjectionOptions implements HCOption {
  const HCMapViewInsetsProjectionOptions({
    this.name,
    this.parallels,
    this.rotation,
  });

  /// (Highmaps) Projection name. Built-in projections are `EqualEarth`, `LambertConformalConic`, `Miller`, `Orthographic` and `WebMercator`.
  final String? name;

  /// (Highmaps) The two standard parallels that define the map layout in conic projections, like the LambertConformalConic projection. If only one number is given, the second parallel will be the same as the first.
  final List<num>? parallels;

  /// (Highmaps) Rotation of the projection in terms of degrees `[lambda, phi, gamma]`. When given, a three-axis spherical rotation is be applied to the globe prior to the projection.
  final dynamic rotation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (name != null) {
      json['name'] = name;
    }
    if (parallels != null) {
      json['parallels'] = parallels;
    }
    if (rotation != null) {
      json['rotation'] = hcJsonValue(rotation);
    }
    return json;
  }
}

/// (Highmaps) The `mapView` options control the initial view of the chart, and how projection is set up for raw geoJSON maps (beta as of v9.3).
class HCMapViewOptions implements HCOption {
  const HCMapViewOptions({
    this.center,
    this.fitToGeometry,
    this.insetOptions,
    this.insets,
    this.maxZoom,
    this.padding,
    this.projection,
    this.zoom,
  });

  /// (Highmaps) The center of the map in terms of longitude and latitude. For preprojected maps (like the GeoJSON files in Map Collection v1.x), the units are projected x and y units.
  final List<num>? center;

  /// (Highmaps) Fit the map to a geometry object consisting of individual points or polygons. This is practical for responsive maps where we want to focus on a specific area regardless of map size - unlike setting `center` and `zoom`, where the view doesn't scale with different map sizes.
  final dynamic fitToGeometry;

  /// (Highmaps) Generic options for the placement and appearance of map insets like non-contiguous territories.
  final HCMapViewInsetOptions? insetOptions;

  /// (Highmaps) The individual MapView insets, typically used for non-contiguous areas of a country. Each item inherits from the generic `insetOptions`.
  final dynamic insets;

  /// (Highmaps) Prevents the end user from zooming too far in on the map. See zoom.
  final num? maxZoom;

  /// (Highmaps) The padding inside the plot area when auto fitting to the map bounds. A number signifies pixels, and a percentage is relative to the plot area size.
  final dynamic padding;

  /// (Highmaps) The projection options allow applying client side projection to a map given in geographic coordinates, typically from TopoJSON or GeoJSON.
  final dynamic projection;

  /// (Highmaps) The zoom level of a map. Higher zoom levels means more zoomed in. An increase of 1 zooms in to a quarter of the viewed area (half the width and height). Defaults to fitting to the map bounds.
  final num? zoom;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (center != null) {
      json['center'] = center;
    }
    if (fitToGeometry != null) {
      json['fitToGeometry'] = hcJsonValue(fitToGeometry);
    }
    if (insetOptions != null) {
      json['insetOptions'] = insetOptions!.toJson();
    }
    if (insets != null) {
      json['insets'] = hcJsonValue(insets);
    }
    if (maxZoom != null) {
      json['maxZoom'] = maxZoom;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (projection != null) {
      json['projection'] = hcJsonValue(projection);
    }
    if (zoom != null) {
      json['zoom'] = zoom;
    }
    return json;
  }
}

/// (Highmaps) The projection options allow applying client side projection to a map given in geographic coordinates, typically from TopoJSON or GeoJSON.
class HCMapViewProjectionOptions implements HCOption {
  const HCMapViewProjectionOptions({
    this.name,
    this.parallels,
    this.rotation,
  });

  /// (Highmaps) Projection name. Built-in projections are `EqualEarth`, `LambertConformalConic`, `Miller`, `Orthographic` and `WebMercator`.
  final String? name;

  /// (Highmaps) The two standard parallels that define the map layout in conic projections, like the LambertConformalConic projection. If only one number is given, the second parallel will be the same as the first.
  final List<num>? parallels;

  /// (Highmaps) Rotation of the projection in terms of degrees `[lambda, phi, gamma]`. When given, a three-axis spherical rotation is be applied to the globe prior to the projection.
  final dynamic rotation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (name != null) {
      json['name'] = name;
    }
    if (parallels != null) {
      json['parallels'] = parallels;
    }
    if (rotation != null) {
      json['rotation'] = hcJsonValue(rotation);
    }
    return json;
  }
}
