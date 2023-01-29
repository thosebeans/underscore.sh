build: _sh
_sh: ./underscore.sh
	printf '#!/usr/bin/env sh\n %s \n _sh "$$@"\n' "$$(cat ./underscore.sh)" > ./_sh
	chmod +x ./_sh

clean:
	git clean -fX

git: .PHONY
	git config core.hooksPath "$$(pwd)/git/hooks"

.PHONY:
