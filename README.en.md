# Stellarium — Unofficial Linux Build

[한국어](README.md) | **English** | [日本語](README.jp.md)

An **unofficial Linux fork** that checks the CHZZK broadcast status of Stellive members and sends a desktop notification when a stream starts.
> ⚠️ This repository is a fork of the original project.  
> Original project: https://github.com/tabiluv/stellastatus_app  
> This fork is based on the original project and **adds an AppImage build and Linux support** so it can be used on Linux.
>
> It follows the features and MIT license of the original project, and apart from the Linux-related changes, the overall direction of the project follows the original.

This is not an official service provided by Stellive. It is an unofficial program made and distributed by a fan.

## Features
- Periodic checking of CHZZK broadcast status and member subscriptions
- Stream-start notifications and automatic opening of the default browser
- Member profiles, live title, category, viewer count, and thumbnail
- Broadcast schedule based on StelLight
- Resident in the system tray, with auto-start on login
- Update checks via GitHub Releases
- Discord Rich Presence and integration with the Stellarium web view (original feature)

## Running and Development

Node.js 20 or later is recommended.

```bash
npm ci
npm run gen-icon
npm run gen-logos
npm start
```

To open the developer tools, run `npm run dev`.

## Building the Linux AppImage

```bash
npm ci
npm run gen-icon
npm run gen-logos
npx electron-builder --linux AppImage --publish never
```

The build output is created in `dist/`. GitHub Actions builds the Linux AppImage and attaches it to the release when a `v*` tag is pushed or when run manually.

```bash
git tag v1.0.9
git push origin v1.0.9
```

## Data and Privacy
- Broadcast status: CHZZK internal API
- Broadcast schedule: StelLight public API
- Updates: GitHub Releases
- App settings are stored locally. Network requests are limited to the services above and the Stellarium web service used by the app.

## Data Sources

- Broadcast status: CHZZK internal API. Since this endpoint has no official documentation, its response structure may change or it may be blocked, and it is intended for personal, non-commercial use only.
- Broadcast schedule: Uses the public API of StelLight, a fan-made service. To reduce server load, the check interval is limited to a minimum of 30 seconds.


## License and Copyright

This project is distributed under the **MIT License**.

This repository is a fork of the following original project.

- Original: https://github.com/tabiluv/stellastatus_app
- Fork: https://github.com/Maroshall/stellarium_unoffical_linux

We respect the copyright and MIT license terms of the original project, and the Linux-related code added or modified in this fork is distributed under the same project license terms.

For details, see the `LICENSE` file in the repository.
