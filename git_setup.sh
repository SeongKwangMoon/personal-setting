#!/bin/bash

# 1. 사용자 정보 설정
git config --global user.name "SeongKwangMoon"
git config --global user.email "skm0622@gmail.com"

# 2. 자주 쓰는 단축어(Alias) 설정
git config --global alias.st status
git config --global alias.fp "fetch --prune"
git config --global alias.co checkout
git config --global alias.cm "commit -m"
git config --global alias.po "push origin"
git config --global alias.ri "rebase -i HEAD~2"

# 복합 단축어
git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.bd "!git branch --merged | grep -v '*' | grep -vE '^(  main|  master|  develop)$' | xargs -n 1 git branch -d"

# 3. 기타 환경 설정
# git config --global core.autocrlf true

echo "Git 환경 세팅 완료!"