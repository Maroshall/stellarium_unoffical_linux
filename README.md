# 스텔라리움 (Stellarium) — Linux 비공식 빌드
**SSD가 죽어서 하드로 컴퓨터 사용중이라 SSD가 올때 까지 임시적으로 업데이트 중단합니다**

**한국어** | [English](README.en.md) | [日本語](README.jp.md)

스텔라이브 멤버의 치지직 방송 상태를 확인하고, 방송이 시작되면 데스크톱 알림을 보내주는 **Linux용 비공식 포크**입니다.
> ⚠️ 이 저장소는 원본 프로젝트의 포크입니다.  
> 원본 프로젝트: https://github.com/tabiluv/stellastatus_app  
> 이 포크는 원본 프로젝트를 기반으로 Linux 환경에서 사용할 수 있도록 **AppImage 빌드 및 Linux 지원을 추가**한 버전입니다.
>
> 원본 프로젝트의 기능과 MIT 라이선스를 따르며, Linux 관련 변경사항을 제외한 기본적인 프로젝트 방향은 원본을 따릅니다.

스텔라이브가 제공하는 공식 서비스가 아니며 팬이 제작·배포하는 비공식 프로그램입니다.

## 기능
- 치지직 방송 상태 주기적 확인 및 멤버 구독
- 방송 시작 알림 및 기본 브라우저 자동 열기
- 멤버 프로필, 라이브 제목·카테고리·시청자 수·썸네일
- StelLight 기반 방송 일정
- 시스템 트레이 상주 및 로그인 시 자동 실행
- GitHub Releases 기반 업데이트 확인
- 디스코드 Rich Presence 및 스텔라리움 웹 화면 연동(원본 기능)

## 실행 및 개발

Node.js 20 이상 권장.

```bash
npm ci
npm run gen-icon
npm run gen-logos
npm start
```

개발자 도구를 열려면 `npm run dev`를 실행하세요.

## Linux AppImage 빌드

```bash
npm ci
npm run gen-icon
npm run gen-logos
npx electron-builder --linux AppImage --publish never
```

결과물은 `dist/`에 생성됩니다. GitHub Actions는 `v*` 태그 푸시 또는 수동 실행 시 Linux AppImage를 빌드해 릴리스에 첨부합니다.

```bash
git tag v1.0.9
git push origin v1.0.9
```

## 데이터 및 개인정보
- 방송 상태: 치지직 내부 API
- 방송 일정: StelLight 공개 API
- 업데이트: GitHub Releases
- 앱 설정은 로컬에 저장됩니다. 네트워크 요청은 위 서비스 및 앱이 사용하는 스텔라리움 웹 서비스로 제한됩니다.

## 데이터 출처

- 방송 상태: 치지직 내부 API. 공식 문서가 없는 엔드포인트이므로 응답 구조가 바뀌거나 차단될 수 있으며, 개인·비상업 용도를 전제로 합니다.
- 방송 스케줄: 팬 제작 서비스 StelLight의 공개 API를 사용합니다. 서버 부담을 줄이기 위해 확인 주기는 최소 30초로 제한됩니다.


## 라이선스 및 저작권

이 프로젝트는 **MIT License**에 따라 배포됩니다.

이 저장소는 다음 원본 프로젝트의 포크입니다.

- 원본: https://github.com/tabiluv/stellastatus_app
- 포크: https://github.com/Maroshall/stellarium_unoffical_linux

원본 프로젝트의 저작권 및 MIT 라이선스 조건을 존중하며, 이 포크에서 추가·수정한 Linux 관련 코드는 동일한 프로젝트 라이선스 조건에 따라 배포됩니다.

자세한 내용은 저장소의 `LICENSE` 파일을 확인하세요.
