# 개발 워크스테이션 구축

## 1. 프로젝트 개요
터미널, Docker, Git/GitHub를 활용해 개발 환경을 구성하고,
웹 서버 실행·포트 연결·파일 변경 반영·데이터 영속성을 검증한다.

## 2. 실행 환경
- OS: macOS 15.6.1 (Build 24G90)
- Shell: zsh (/bin/zsh)
- 터미널: macOS 기본 터미널 앱
- Docker 버전: 실습 후 작성
- Git 버전: 2.50.1 (Apple Git-155)

## 3. 수행 체크리스트
- [x] 터미널 기본 조작
- [x] 파일·디렉토리 권한 변경
- [ ] Docker 설치 및 점검
- [ ] hello-world·Ubuntu 실행
- [ ] attach/exec 및 컨테이너 종료·유지 관찰
- [ ] 이미지·컨테이너 관리, 로그·리소스 확인
- [ ] Dockerfile 작성 및 커스텀 이미지 빌드·실행
- [ ] 포트 매핑 및 접속 확인
- [ ] 바인드 마운트 변경 반영
- [ ] Docker 볼륨 영속성 검증
- [ ] Git 사용자 정보·기본 브랜치 설정
- [ ] GitHub·VSCode 연동

## 4. 터미널 조작 및 권한 실습
### 수행 내용
- `pwd`: 현재 위치 확인
- `ls -la`: 숨김 파일을 포함한 목록 확인
- `cd`: 디렉토리 이동
- `touch`: 빈 파일 생성
- `echo`와 `cat`: 내용 저장 및 확인
- `cp`: 파일 복사
- `mv`: 이름 변경 및 파일 이동
- `mkdir`: 디렉토리 생성
- `rm`과 `rmdir`: 파일 및 빈 디렉토리 삭제
- `ls -l`, `ls -ld`, `chmod`: 파일·디렉토리 권한 확인 및 변경

### 주요 명령 및 실제 결과 발췌
아래 명령은 전체 로그 중 일부를 발췌한 것이다.

```text
$ pwd
/Users/jiyoung/dev-workstation

$ touch memo.txt
$ ls -l memo.txt
-rw-r--r--  1 jiyoung  staff  0 11  6 05:55 memo.txt

$ echo "My first terminal practice" > memo.txt
$ cat memo.txt
My first terminal practice

$ cp memo.txt memo-copy.txt
$ mv memo-copy.txt memo-renamed.txt
$ mkdir archive
$ mv memo-renamed.txt archive/
$ ls -l archive
total 8
-rw-r--r--  1 jiyoung  staff  27 11  6 05:55 memo-renamed.txt

$ rm archive/memo-renamed.txt
$ rmdir archive

$ mv memo.txt practice/
$ cd practice

$ ls -l memo.txt
-rw-r--r--  1 jiyoung  staff  27 11  6 05:55 memo.txt
$ chmod 600 memo.txt
$ ls -l memo.txt
-rw-------  1 jiyoung  staff  27 11  6 05:55 memo.txt

$ mkdir permission-test
$ ls -ld permission-test
drwxr-xr-x  2 jiyoung  staff  64 11  6 05:58 permission-test
$ chmod 700 permission-test
$ ls -ld permission-test
drwx------  2 jiyoung  staff  64 11  6 05:58 permission-test
```

### 권한 해석
권한 숫자는 소유자·그룹·기타 사용자 순서이며,
읽기(r)=4, 쓰기(w)=2, 실행(x)=1을 더해 표현한다.

- 파일: 644 → 600. 소유자만 읽고 쓸 수 있도록 변경했다.
- 디렉토리: 755 → 700. 소유자만 읽기·쓰기·접근할 수 있도록 변경했다.
- 디렉토리의 실행(x) 권한은 해당 디렉토리를 통과하거나 들어가는 데 필요하다.

### 경로
- 절대 경로: `/Users/jiyoung/dev-workstation/practice`
- 상대 경로: `dev-workstation`에서의 `practice`
- 다른 PC에서는 사용자 이름에 맞춰 `~/dev-workstation`을 사용한다.

### 전체 실행 증거
[터미널 전체 명령 및 출력 로그](01-terminal.txt)

원본 로그에는 터미널 화면 제어 문자가 포함되어 있어,
주요 결과는 위 코드블록에 별도로 정리했다.

## 5. Docker 설치 및 운영
버전·데몬 점검, 컨테이너 실습 및 운영 명령의 결과를 기록한다.

## 6. Dockerfile 기반 웹 서버
베이스 이미지, 커스텀한 내용과 목적, 소스코드 위치,
빌드·실행 명령 및 결과를 기록한다.

## 7. 포트 매핑 및 접속
포트 연결 명령과 검증 결과를 기록하고,
주소창과 응답 화면이 함께 보이는 브라우저 캡처를 첨부한다.

## 8. 바인드 마운트
실행 명령과 호스트 파일 변경 전후의 반영 결과를 기록한다.

## 9. 볼륨 영속성
볼륨 생성·연결 명령과 컨테이너 삭제 전후의 데이터 확인 결과를 기록한다.

## 10. Git 및 GitHub·VSCode 연동
Git 설정 명령과 결과, GitHub·VSCode 연동 증거를 기록한다.

## 11. 재현 방법 및 증거 링크
평가자가 따라 할 실행 절차와 각 로그·캡처의 위치를 정리한다.
개인 PC에 종속된 경로나 설정은 대체 방법을 함께 설명한다.

## 12. 트러블슈팅

### 사례 1
- 문제:
- 원인 가설:
- 확인:
- 해결 또는 대안:

### 사례 2
- 문제:
- 원인 가설:
- 확인:
- 해결 또는 대안:
