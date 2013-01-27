
# Default variables
grid:= default

# Default target
all: minify

# Create minified CSS from Sass
minify: compile
	@echo "Minifying CSS...";
	@echo "`cat ./grid/$(grid)/head.txt`\n\n`sass ./grid/$(grid)/grid.scss --style compressed`" \
		> "build/frag-$(grid).min.css";
	@echo "  > Done"

# Create CSS from Sass
compile: prepare
	@echo "Compiling Sass to CSS for '$(grid)' grid...";
	@echo "`cat ./grid/$(grid)/head.txt`\n\n`sass ./grid/$(grid)/grid.scss --style expanded`" \
		> "build/frag-$(grid).css";
	@echo "  > Done"

# Prepare the build directory structure
prepare:
	@mkdir -p ./build

# Clean up (remove the build directory structure)
clean:
	@rm -rf ./build
