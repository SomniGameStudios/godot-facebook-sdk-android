@tool
extends EditorPlugin

var export_plugin : AndroidExportPlugin

func _enter_tree():
	add_autoload_singleton("FacebookSdkWrapper", "res://addons/GodotFacebookSdkAndroid/facebook_sdk_wrapper.gd")
	export_plugin = AndroidExportPlugin.new()
	add_export_plugin(export_plugin)

func _exit_tree():
	remove_autoload_singleton("FacebookSdkWrapper")
	remove_export_plugin(export_plugin)
	export_plugin = null

class AndroidExportPlugin extends EditorExportPlugin:
	var _plugin_name = "GodotFacebookSdkAndroid"

	func _supports_platform(platform):
		if platform is EditorExportPlatformAndroid:
			return true
		return false

	func _get_android_libraries(platform, debug):
		if debug:
			return PackedStringArray([_plugin_name + "/bin/" + _plugin_name + "-debug.aar"])
		else:
			return PackedStringArray([_plugin_name + "/bin/" + _plugin_name + "-release.aar"])

	func _get_android_dependencies(platform, debug):
		# Facebook SDK dependencies
		return PackedStringArray([
			"com.facebook.android:facebook-core:latest.release"
		])

	func _get_name():
		return _plugin_name