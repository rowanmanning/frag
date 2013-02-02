
# Default variables
grid:= default

# Default target
all: minify

# Create minified CSS from Sass
minify: compile
	@echo "Minifying CSS...";
	@echo "`cat ./grid/$(grid)/head.txt`\n\n`sass ./grid/$(grid)/grid.scss --style compressed`" \
		> "./build/$(grid)/frag-$(grid).min.css";
	@echo "`cat ./grid/$(grid)/head.txt`\n\n`sass ./grid/$(grid)/grid.oldie.scss --style compressed`" \
		> "./build/$(grid)/frag-$(grid).oldie.min.css";
	@echo "  > Done"

# Create CSS from Sass
compile: prepare
	@mkdir -p "./build/$(grid)"
	@echo "Compiling Sass to CSS for '$(grid)' grid...";
	@echo "`cat ./grid/$(grid)/head.txt`\n\n`sass ./grid/$(grid)/grid.scss --style expanded`" \
		> "./build/$(grid)/frag-$(grid).css";
	@echo "`cat ./grid/$(grid)/head.txt`\n\n`sass ./grid/$(grid)/grid.oldie.scss --style expanded`" \
		> "./build/$(grid)/frag-$(grid).oldie.css";
	@echo "  > Done"

# Prepare the build directory structure
prepare:
	@mkdir -p ./build

# Clean up (remove the build directory structure)
clean:
	@rm -rf ./build
