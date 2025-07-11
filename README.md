***Git Hooks Collection***

A collection of real-world Git hooks used in production to improve code quality, enforce team conventions, and automate development workflows.
----------------------------------------------------------------------------------------------------------------------------------------------

## Repository Structure-

git-hooks-collection/
│
├── hooks/
│   ├── pre-commit/
│   │   └── python-lint.sh
│   ├── prepare-commit-msg/
│   │   └── add-jira-ticket.sh
│   ├── commit-msg/
│   │   └── validate-message.sh
│   ├── pre-push/
│   │   └── run-tests.sh
│
├── setup/
│   └── install-hooks.sh
│
├── .flake8                  # flake8 config to exclude venv
├── .gitignore               # ignores venv and other untracked files
├── requirements.txt         # Python dependencies (flake8, pytest)
└── README.md                # This file


# Getting Started

### 1. Clone this Repository


git clone https://github.com/<your-username>/git-hooks-collection.git
cd git-hooks-collection


### 2. Set Up a Virtual Environment


python3 -m venv venv
source venv/bin/activate

### 3. Install Dependencies


pip install -r requirements.txt


## Install the Hooks

To install all hooks at once:
bash setup/install-hooks.sh
Or install individual hooks manually, for example:


cp hooks/pre-commit/python-lint.sh .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit


## Included Hooks

| Hook Type          | File Name           | Purpose                                           |
| ------------------ | ------------------- | ------------------------------------------------- |
| pre-commit         | python-lint.sh      | Runs `flake8` to lint Python code before commit   |
| prepare-commit-msg | add-jira-ticket.sh  | Auto-prepends JIRA ticket from branch name        |
| commit-msg         | validate-message.sh | Validates commit message format (e.g., PROJ-123:) |
| pre-push           | run-tests.sh        | Runs Python tests with `pytest` before push       |


## .flake8 Configuration


[flake8]
exclude = .git,__pycache__,venv
max-line-length = 100


## Contributing

Pull requests are welcome. Please include documentation for any new hooks.


## Purpose

This repository helps developers:

* Catch issues early in the development process
* Enforce clean and consistent commit history
* Automate repetitive tasks using Git hooks
