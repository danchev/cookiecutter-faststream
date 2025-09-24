#!/bin/bash

echo "Running ruff..."
uv run ruff {{cookiecutter.project_slug}} tests --fix

echo "Running black..."
uv run black {{cookiecutter.project_slug}} tests
