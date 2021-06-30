#
# Makefile for space-study
#
PROG=space-study
VERSION=0.0.0
BUILD=$(VERSION).1
#----------------------------------------------------------------------------------
usage:
	@echo "usage: make [build|run] for $(PROG)"
#----------------------------------------------------------------------------------
edit e:
	@echo "> make (edit) [1:local|2:cobot]"

#----------------------------------------------------------------------------------
MSG="start-access-token"
git g:
	@echo "> make (git:g) [update|store]"

git-update gu:
	git add .
	git commit -a -m "$(BUILD),$(USER) - $(MSG)"
	git push

git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

