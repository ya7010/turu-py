.PHONY: install
install:
	bash scripts/uv-install.sh

.PHONY: ci
ci:
	bash scripts/ci.sh

.PHONY: format
format:
	bash scripts/format.sh

.PHONY: lint
lint:
	bash scripts/lint.sh

.PHONY: typecheck
typecheck:
	bash scripts/typecheck.sh

.PHONY: test
test:
	bash scripts/test.sh

.PHONY: update
update:
	bash scripts/update.sh

.PHONY: uv-install
uv-install:
	bash scripts/uv-install.sh

.PHONY: uv-update
uv-update:
	bash scripts/uv-update.sh

.PHONY: uv-lock
uv-lock:
	bash scripts/uv-lock.sh

.PHONY: docs
docs:
	uv run --group docs task docs-serve
