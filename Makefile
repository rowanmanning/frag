
# Default target
all: minify

# Create minified CSS from Sass
minify: compile
	@echo "Minifying CSS...";
	@echo "`sass ./lib/frag.scss --style compressed`" \
		> "./build/frag.min.css";
	@echo "  > Done"

# Create CSS from Sass
compile: prepare
	@echo "Compiling Sass to CSS...";
	@echo "`sass ./lib/frag.scss --style expanded`" \
		> "./build/frag.css";
	@echo "  > Done"

# Prepare the build directory structure
prepare:
	@mkdir -p ./build

# Clean up (remove the build directory structure)
clean:
	@rm -rf ./build
