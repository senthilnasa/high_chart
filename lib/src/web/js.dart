library;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

///
/// A JavaScript module for eval function.
///
@JS('eval')
external void eval(String code);

/// Exposes [callback] as a JS-callable function named [name] on the global
/// `window` object, so inline Highcharts event handlers can call back into
/// Dart via `window[name](jsonPayload)`.
void registerJsCallback(
    String name, void Function(String jsonPayload) callback) {
  globalContext.setProperty(
    name.toJS,
    ((JSString payload) => callback(payload.toDart)).toJS,
  );
}

/// Removes a callback previously registered with [registerJsCallback].
void unregisterJsCallback(String name) {
  globalContext.delete(name.toJS);
}
