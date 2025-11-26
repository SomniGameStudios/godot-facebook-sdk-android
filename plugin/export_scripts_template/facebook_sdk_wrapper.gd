extends Node
# This is script must be auto-loaded as `FacebookSdkWrapper`.

var _current_platform: String
var _facebook_sdk_plugin

func _ready() -> void:
	_current_platform = OS.get_name()
	print("Info/FacebookSdkWrapper: Platform detected: " + _current_platform)

	if _current_platform == "Android":
		_initialize_facebook_sdk_plugin()
		_set_debug_mode()
		_test_plugin()
	elif _current_platform == "iOS":
		pass

func _initialize_facebook_sdk_plugin() -> void:
	var plugin_name = "GodotFacebookSdkAndroid"

	if Engine.has_singleton(plugin_name):
		_facebook_sdk_plugin = Engine.get_singleton(plugin_name)
	elif OS.has_feature("template"):
		printerr("Couldn't find Facebook plugin: " + plugin_name)

func _set_debug_mode() -> void:
	if OS.is_debug_build():
		_facebook_sdk_plugin.setDebugMode(true)
		print("Info/FacebookSdkWrapper: Debug mode enabled")

func _test_plugin() -> void:
	_facebook_sdk_plugin.testPlugin()
