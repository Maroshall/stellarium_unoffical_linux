# ステラリウム (Stellarium) — Linux 非公式ビルド

[한국어](README.md) | [English](README.en.md) | **日本語**

ステライブメンバーのCHZZK(치지직)の配信状況を確認し、配信が始まるとデスクトップ通知を送る **Linux向け非公式フォーク** です。
> ⚠️ このリポジトリは元プロジェクトのフォークです。  
> 元プロジェクト: https://github.com/tabiluv/stellastatus_app  
> このフォークは元プロジェクトをベースに、Linux環境で使えるよう **AppImageビルドとLinux対応を追加** したバージョンです。
>
> 元プロジェクトの機能とMITライセンスに従い、Linux関連の変更点を除く基本的なプロジェクトの方向性は元プロジェクトに準じます。

ステライブが提供する公式サービスではなく、ファンが制作・配布する非公式プログラムです。

## 機能
- CHZZKの配信状況の定期確認とメンバー購読
- 配信開始通知とデフォルトブラウザの自動起動
- メンバープロフィール、ライブのタイトル・カテゴリ・視聴者数・サムネイル
- StelLightベースの配信スケジュール
- システムトレイへの常駐とログイン時の自動起動
- GitHub Releasesによるアップデート確認
- Discord Rich Presenceおよびステラリウムのウェブ画面との連携(元プロジェクトの機能)

## 実行と開発

Node.js 20以上を推奨します。

```bash
npm ci
npm run gen-icon
npm run gen-logos
npm start
```

開発者ツールを開くには `npm run dev` を実行してください。

## Linux AppImageのビルド

```bash
npm ci
npm run gen-icon
npm run gen-logos
npx electron-builder --linux AppImage --publish never
```

成果物は `dist/` に生成されます。GitHub Actionsは、`v*` タグのプッシュまたは手動実行時にLinux AppImageをビルドし、リリースに添付します。

```bash
git tag v1.0.9
git push origin v1.0.9
```

## データと個人情報
- 配信状況: CHZZKの内部API
- 配信スケジュール: StelLightの公開API
- アップデート: GitHub Releases
- アプリの設定はローカルに保存されます。ネットワークリクエストは、上記のサービスおよびアプリが使用するステラリウムのウェブサービスに限定されます。

## データの出典

- 配信状況: CHZZKの内部API。公式ドキュメントのないエンドポイントのため、レスポンス構造が変更されたりブロックされたりする可能性があり、個人・非商用での利用を前提としています。
- 配信スケジュール: ファン制作のサービスStelLightの公開APIを使用します。サーバー負荷を減らすため、確認間隔は最短30秒に制限されています。


## ライセンスと著作権

このプロジェクトは **MIT License** に基づいて配布されます。

このリポジトリは、以下の元プロジェクトのフォークです。

- 元プロジェクト: https://github.com/tabiluv/stellastatus_app
- フォーク: https://github.com/Maroshall/stellarium_unoffical_linux

元プロジェクトの著作権およびMITライセンスの条件を尊重し、このフォークで追加・修正したLinux関連のコードも、同じプロジェクトのライセンス条件に従って配布されます。

詳細はリポジトリの `LICENSE` ファイルをご確認ください。
