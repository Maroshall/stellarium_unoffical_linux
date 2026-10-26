#!/usr/bin/env bash
set -euo pipefail

APPIMAGE_PATH="${1:-}"
if [[ -z "$APPIMAGE_PATH" ]]; then
  echo "사용법: $0 /경로/스텔라리움.AppImage" >&2
  exit 2
fi
if [[ ! -f "$APPIMAGE_PATH" ]]; then
  echo "AppImage 파일을 찾을 수 없습니다: $APPIMAGE_PATH" >&2
  exit 2
fi

APPIMAGE_PATH="$(realpath "$APPIMAGE_PATH")"
mkdir -p "$HOME/.local/share/applications"
DESKTOP_FILE="$HOME/.local/share/applications/stellarium.desktop"
# Escape characters special to a quoted Desktop Entry Exec argument.
ESCAPED_PATH="${APPIMAGE_PATH//\\/\\\\}"
ESCAPED_PATH="${ESCAPED_PATH//\"/\\\"}"
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Type=Application
Name=스텔라리움
Comment=Stellarium desktop app
Exec="$ESCAPED_PATH" %u
Terminal=false
Categories=Utility;
Icon=application-x-executable
MimeType=x-scheme-handler/stellarium;
StartupNotify=true
EOF

update-desktop-database "$HOME/.local/share/applications" 2>/dev/null || true
xdg-mime default stellarium.desktop x-scheme-handler/stellarium
echo "등록 완료: x-scheme-handler/stellarium → $APPIMAGE_PATH"
echo "확인: xdg-mime query default x-scheme-handler/stellarium"
