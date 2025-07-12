lock:
    uv lock
    uv export > requirements.txt

pin-build-deps:
    echo "build\ncibuildwheel" | uv pip compile --generate-hashes --custom-compile-command "just pin-build-deps" - > build-requirements.txt

lint:
    # @TODO: Use zizmor
    echo "TODO"

generate:
    uv run cog -r .github/workflows/build-wheel.yaml
