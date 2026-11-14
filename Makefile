CSS := bin/tailwindcss
SRC := assets/input.css
OUT := static/css/app.css

bin/tailwindcss:
	@mkdir -p bin
	curl -fsSL -o $@ https://github.com/tailwindlabs/tailwindcss/releases/download/v4.3.5/tailwindcss-linux-x64
	@chmod +x $@
	echo "e47695cee3f0d90623a91f3939b08bdee610eb5ad99340adff9d4145b284d6cc  $@" | sha256sum -c -

css: bin/tailwindcss
	$(CSS) -i $(SRC) -o $(OUT) --watch

css-build: bin/tailwindcss
	$(CSS) -i $(SRC) -o $(OUT) --minify

.PHONY: css css-build