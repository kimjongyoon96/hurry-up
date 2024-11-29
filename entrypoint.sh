#!/bin/sh

# 항상 최신 의존성을 설치하되, 이미 설치된 경우 캐시를 사용하여 필요한 부분만 설치
yarn install --frozen-lockfile
# 도커 컨테이너가 app이다 즉, dockerfle이 이미지를 빌드했다고 가정
if [ "$1" = "app" ]; then
  yarn start:dev

else
  echo "Unknown service: $1"
  exit 1
fi

 