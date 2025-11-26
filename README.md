# Facebook Android SDK Plugin for Godot 4.4.1+

A native Android integration of the [Facebook SDK](https://developers.facebook.com/docs/android/) for Godot Engine 4.4.1+. This plugin is **production-tested** and currently used in [Stepland](https://www.instagram.com/steplandapp/), a mobile rhythm game where you step, jump, and dance your way through challenging levels. Stepland combines fitness with gaming, turning your movement into an interactive musical experience.

## Somni Game Studios

[Somni Game Studios Web](https://somnigamestudios.com/)

## Stepland

This plugin is proudly used in [Stepland](https://stepland.es/):
- 📱 [Instagram](https://www.instagram.com/steplandapp/)
- 🍎 [iOS App Store](https://apps.apple.com/es/app/stepland/id6749793290)
- 🤖 [Google Play Store](https://play.google.com/store/apps/details?id=com.somnigamestudios.stepland)

## Features

- Integrates [Facebook Android SDK](https://developers.facebook.com/docs/android/) for Godot 4.4.1+
- Implements [Automatically Logged Events](https://developers.facebook.com/docs/app-events/getting-started-app-events-android) for app analytics
- Provides a `FacebookSdkWrapper` autoload for easy access throughout your project

## Installation

1. Download the latest release or build the plugin from source
2. Copy the plugin files to your Godot project's `addons/` folder
3. Enable the plugin in `Project` -> `Project Settings...` -> `Plugins`

## Configuration

### Required: Facebook App Credentials

You **must** configure your Facebook App ID and Client Token before using this plugin:

1. Open `plugin/src/main/res/values/strings.xml`
2. Replace the placeholder values with your actual Facebook credentials:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="facebook_app_id">YOUR_FACEBOOK_APP_ID</string>
    <string name="facebook_client_token">YOUR_FACEBOOK_CLIENT_TOKEN</string>
</resources>
```

To obtain these credentials, follow the [Facebook Android Getting Started Guide](https://developers.facebook.com/docs/android/getting-started).

### Autoload Setup

The plugin automatically creates a `FacebookSdkWrapper` autoload that handles platform detection and initialization. This wrapper is ready to use once the plugin is enabled.

## Usage

The `FacebookSdkWrapper` autoload is automatically available in your project. It handles:
- Platform detection (Android/iOS)
- Facebook SDK initialization
- Debug mode configuration (enabled automatically in debug builds)

## Building from Source

### Prerequisites
- [Android Studio](https://developer.android.com/studio) (recommended)
- Godot 4.4.1+

### Build Steps

1. Clone this repository
2. Navigate to the project's root directory in a terminal
3. Run the build command:
```bash
./gradlew assemble
```
4. On successful completion, the output files will be in [`plugin/demo/addons`](plugin/demo/addons)

### Testing

Use the included [demo project](plugin/demo/project.godot) to test the plugin:

1. Open the demo in Godot 4.4.1 or higher
2. Navigate to `Project` -> `Project Settings...` -> `Plugins` and enable the plugin
3. Install the Android Build Template
4. Connect an Android device and run the demo



## License

See [LICENSE](LICENSE) for details.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## Support

As a commercial studio, our time is literally money, and we can't dedicate as much time to support as we would like. However, we'll do our best to address issues when possible. For bugs, questions, or feature requests, please open an issue on this repository. Community contributions and pull requests are especially appreciated!

