#!/bin/bash
set -e

echo "Running mypy..."
uvx mypy {{cookiecutter.project_slug}}

echo "Running bandit..."
uvx bandit -c pyproject.toml -r {{cookiecutter.project_slug}}
