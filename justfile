lock:
    uv lock
    uv export > requirements.txt

lint:
    # @TODO: Use zizmor
    echo "TODO"

generate:
    uv run cog -r .github/workflows/build-wheel.yaml
