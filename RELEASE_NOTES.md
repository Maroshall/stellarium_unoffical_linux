 <!-- i18n:ko -->
## 스텔라리움 Linux v1.1.1

> 원본 Stellarium v1.1.1 업데이트를 기반으로 Linux 환경에 맞게 수정한 버전입니다.

스텔라리움 Linux 버전을 이용해 주셔서 감사합니다.

### 주요 변경 사항
- **Linux 지원** — Linux 데스크톱 환경에서 실행할 수 있도록 수정했습니다.
- **로그인 복귀 지원** — `stellarium://` URL 스킴을 통해 브라우저 로그인 후 앱으로 복귀할 수 있도록 지원합니다.
- **AppImage 배포** — 지원되는 Linux 환경에서 AppImage 형식으로 실행할 수 있습니다.

### 설치 방법
1. GitHub Releases의 Assets에서 Linux용 `.AppImage` 파일을 내려받습니다.
2. 터미널에서 다운로드한 파일에 실행 권한을 부여합니다.

   ```bash
   chmod +x Stellarium*.AppImage
   ```

3. AppImage 파일을 실행합니다.
4. 로그인 후 앱으로 자동 복귀하지 않으면 Linux의 URL 스킴 등록 상태를 확인하세요.

### 지원 환경
- **Linux** — AppImage를 실행할 수 있는 데스크톱 Linux 환경
- **로그인 복귀** — `stellarium://` URL 스킴을 지원하는 데스크톱 환경

---

<!-- i18n:en -->
## Stellarium Linux v1.1.1

> A Linux-adapted version based on the upstream Stellarium v1.1.1 update.

Thank you for using Stellarium Linux.

### What's changed
- **Linux support** — Adapted to run in Linux desktop environments.
- **Login redirect support** — Supports returning to the app after browser login through the `stellarium://` URL scheme.
- **AppImage distribution** — Distributed as an AppImage for compatible Linux environments.

### How to install
1. Download the Linux `.AppImage` file from the Assets section of GitHub Releases.
2. Grant execute permission in a terminal:

   ```bash
   chmod +x Stellarium*.AppImage
   ```

3. Run the AppImage.
4. If the app does not reopen after login, check whether the `stellarium://` URL scheme is registered with your desktop environment.

### Requirements
- **Linux** — A desktop Linux environment capable of running AppImage.
- **Login redirect** — A desktop environment that supports the `stellarium://` URL scheme.

---

<!-- i18n:ja -->
## Stellarium Linux v1.1.1

> 上流版 Stellarium v1.1.1 の更新を基に、Linux 環境向けに調整したバージョンです。

Stellarium Linux をご利用いただきありがとうございます。

### 変更内容
- **Linux 対応** — Linux デスクトップ環境で実行できるように調整しました。
- **ログイン後のアプリ復帰** — `stellarium://` URL スキームを利用し、ブラウザーでのログイン後にアプリへ戻る機能をサポートします。
- **AppImage 配布** — 対応する Linux 環境向けに AppImage 形式で配布します。

### インストール方法
1. GitHub Releases の Assets から Linux 用の `.AppImage` ファイルをダウンロードします。
2. ターミナルで実行権限を付与します。

   ```bash
   chmod +x Stellarium*.AppImage
   ```

3. AppImage ファイルを実行します。
4. ログイン後にアプリへ戻らない場合は、デスクトップ環境で `stellarium://` URL スキームが登録されているか確認してください。

### 動作環境
- **Linux** — AppImage を実行できるデスクトップ Linux 環境
- **ログイン後の復帰** — `stellarium://` URL スキームに対応したデスクトップ環境
