#include "include/high_chart/high_chart_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "high_chart_plugin.h"

void HighChartPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  high_chart::HighChartPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
