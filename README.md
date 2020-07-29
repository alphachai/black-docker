# alphachai/black

```bash
# check
docker run -it --rm --mount type=bind,src=$(pwd),dst=/app alphachai/black --check $(PYTHON_LINT_TARGETS)

# format
docker run -it --rm --user $(id -u):$(id -g) --mount type=bind,src=$(pwd),dst=/app alphachai/black $(PYTHON_LINT_TARGETS)
```
