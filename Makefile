##@ Utility

.PHONY: help
help:  ## Shows all available commands and what each one does
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make <target>\n\nCommands:\n"} \
	/^[a-zA-Z_-]+:.*?##/ { printf "  %-22s %s\n", $$1, $$2 } \
	/^##@/ { printf "\n%s\n", substr($$0, 5) }' $(MAKEFILE_LIST)

##@ Environment & Dependencies

.PHONY: uv
uv:  ## Installs uv (Python tool for managing dependencies + virtual env)
	@command -v uv >/dev/null 2>&1 || curl -LsSf https://astral.sh/uv/install.sh | sh

.PHONY: sync
sync: uv  ## Installs all Python packages listed in your pyproject.toml (creates a .venv if needed)
	uv sync

##@ Code Quality

.PHONY: fix-all
fix-all:  ## Formats Python files and lints code using Ruff
	uv run ruff format --verbose ./src ./tests
	uv run ruff check ./src ./tests --fix

.PHONY: safe
safe:  ## Scans all Python code for security issues using Bandit
	uv run bandit -r -lll src

##@ Testing

.PHONY: test
test:  ## Runs all unit tests using pytest
	uv run pytest

.PHONY: cov
cov:  ## Runs tests and generates a coverage report showing which lines were tested
	uv run pytest --cov=src --cov-report=term-missing

##@ Project Setup

.PHONY: checks
checks: fix-all cov safe  ## Runs all code checks: format, lint, coverage, and security

.PHONY: setup
setup: sync checks  ## Installs dependencies and runs all checks to get project ready

##@ Terraform

.PHONY: tf-init
tf-init:  ## Initializes Terraform
	terraform init

.PHONY: tf-plan
tf-plan:  ## Shows Terraform execution plan
	terraform plan

.PHONY: tf-apply
tf-apply:  ## Applies Terraform infrastructure
	terraform apply

.PHONY: tf-outputs
tf-outputs:  ## Shows all Terraform outputs
	terraform output


##@  CI Integration

.PHONY: ci
ci: setup  ## Alias to run all setup steps for CI (install, lint, test, security)

##@ Infrastructure (TODO)

.PHONY: infra
infra:  ## (Not implemented yet) Placeholder for future Terraform deployment steps
	@echo "Terraform infra steps coming soon..."

##@ SQL (TODO)

.PHONY: run-sql-files
run-sql-files:  ## (Not implemented yet) Placeholder for future SQL execution steps

##@ ETL Pipeline (TODO)

.PHONY: etl
etl:  ## (Not implemented) Run a test ETL pipeline or transformation
	@echo "ETL pipeline steps coming soon..."

##@ Application (TODO)

.PHONY: dev
dev:  ## (Not implemented) Run FastAPI app locally
	@echo "FastAPI app server coming soon..."