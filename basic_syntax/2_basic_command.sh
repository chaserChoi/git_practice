# 현재 working directory(= workspace), staging area 상태 확인
git status

# . = 모든 수정/추가 사항 add 
git add .
# 특정 파일만 add할 경우(경로까지 포함)
git add testfolder/test1.txt

# commit을 통해 메시지 타이틀고 메시지 내용을 커밋 이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터 시, vi 모드 -> 첫줄 = 타이틀, 두번째 줄부터 = 내용
git commit

# commit 이력 확인
git log
git log --oneline # commit 이력 간결히 요약
# head 하단 로그인만 보이는 것이 아니라, 모든 commit 이력 조화

# 원격 저장소로 업로드
git push origin 브랜치명
# 충돌 발생 시, 충돌 무시하고 로컬 기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force

# 특정 commit ID로의 전환
git checkout 커밋ID

# 특정 checkout 전환
git checkout 브랜치명

# pull은 원격 변경 사항을 local로 내려받는 것(fetch + merge)
git pull origin 브랜치명

# fetch는 변경 사항을 local 가져오되, 병합(merge)은 하지 않는 것
git fetch origin 브랜피명

# 만약 모든 브랜치의 변경 사항을 가져오려면
git fetch --all

# 버전별(commit 간) 비교 명령어
git diff A B
git diff commitID1 commitID2
git diff branch1 branch2

# 가장 최신의 커밋 취소
git reset head~1
git reset head^

# 이미 push된 commit 되돌리는(완전한 취소X) commitID 생성
git revert 커밋ID

# 작업 중인 사항을 임시 저장
git stash

# 임시 저장된 사항 다시 불러오기
git stash pop

# 임시 저장된 사항 목록 확인
git stash list

