# tmpl-python-langgraph-single
Template repo for single LangGraph agent
trigger ci

## Core Repo Contract (Must Exist in Every Agent Repo)
This repository follows the standard Agent Factory contract.

### Required Structure (Always Present)
- .github/workflows/ci.yml (CI entrypoint; calls central reusable workflow)
- .github/CODEOWNERS (ownership + governance)
- pyproject.toml (dependencies + lint + test config)
- agent/ (agent implementation code)
- tests/ (unit tests)
- README.md (repo documentation)

- ### Ownership
- Platform-owned: .github/workflows/ci.yml, .github/CODEOWNERS, central CI workflow repo
- App-owned: agent/*, tests/*, README content, dependencies (within guardrails)
