# Facebook Android SDK Plugin for Godot 4.4.1+

A native Android integration of the [Facebook SDK](https://developers.facebook.com/docs/android/) for Godot Engine 4.4.1+.

**Production-tested** in [Stepland](https://stepland.es/) by [Somni Game Studios](https://somnigamestudios.com/)
- 💚 A cozy game that turns healthy habits into a relaxing experience.
- 🌿 Walk, hydrate, meditate, and exercise to grow your town and unlock cute characters.

- 📱 [Instagram](https://www.instagram.com/steplandapp/)
- 🍎 [iOS](https://apps.apple.com/es/app/stepland/id6749793290)
- 🤖 [Android](https://play.google.com/store/apps/details?id=com.somnigamestudios.stepland)

## Features

- [Facebook Android SDK](https://developers.facebook.com/docs/android/) integration with [Automatically Logged Events](https://developers.facebook.com/docs/app-events/getting-started-app-events-android)
- `FacebookSdkWrapper` autoload for easy access

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/SomniGameStudios/godot-facebook-sdk-android.git
   cd godot-facebook-sdk-android
   ```

2. **Configure Facebook credentials** in `plugin/src/main/res/values/strings.xml`
   ```xml
   <string name="facebook_app_id">YOUR_FACEBOOK_APP_ID</string>
   <string name="facebook_client_token">YOUR_FACEBOOK_CLIENT_TOKEN</string>
   ```
   Get credentials from the [Facebook Android Getting Started Guide](https://developers.facebook.com/docs/android/getting-started).

3. **Build the plugin**
   ```bash
   ./gradlew assemble
   ```

4. **Copy to your project**
   ```
   plugin/demo/addons/GodotFacebookSdkAndroid → YOUR_PROJECT/addons/
   ```

5. **Enable plugin** in Godot: `Project` → `Project Settings` → `Plugins` → Enable `GodotFacebookSdkAndroid`

6. **Export your project** — The `FacebookSdkWrapper` autoload handles initialization automatically.

## License

See [LICENSE](LICENSE) for details.

## Support

As a commercial studio, our time is literally money, and we can't dedicate as much support as we'd like. For bugs or questions, open an issue. Community contributions are especially appreciated!

