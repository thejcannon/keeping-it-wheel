pin-build-deps:
    echo "build\ncibuildwheel" | uv pip compile --generate-hashes --custom-compile-command "just pin-build-deps" - > cibuildwheel-requirements.txt

lint:
    uv run zizmor .github/workflows
    uv run cog --check .github/workflows/*.yaml

    # @TODO: Enforce conventions (like no checkout)
    # @TODO: GHA/YAML formatter

reformat:
    uv run zizmor --fix=all .github/workflows/*.yaml
    uv run cog -r .github/workflows/*.yaml
