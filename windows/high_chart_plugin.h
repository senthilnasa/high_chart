#ifndef FLUTTER_PLUGIN_HIGH_CHART_PLUGIN_H_
#define FLUTTER_PLUGIN_HIGH_CHART_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace high_chart {

class HighChartPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  HighChartPlugin();

  virtual ~HighChartPlugin();

  // Disallow copy and assign.
  HighChartPlugin(const HighChartPlugin&) = delete;
  HighChartPlugin& operator=(const HighChartPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace high_chart

#endif  // FLUTTER_PLUGIN_HIGH_CHART_PLUGIN_H_
