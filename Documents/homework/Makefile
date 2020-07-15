# supply directory as directory=/path/to/file
directory = ""

# Directory containing source (Markdown) files
source := $(directory)

# Directory containing pdf files
output := $(directory)

# All markdown files in src/ are considered sources
sources := $(wildcard $(source)/*.md)

# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (PDFs in directory print/).
objects := $(patsubst %.md,%.pdf,$(subst $(source),$(output),$(sources)))

all: $(objects)

# Recipe for converting a Markdown file into PDF using Pandoc
$(output)/%.pdf: $(source)/%.md
	pandoc \
		--pdf-engine=xelatex \
		--variable mainfont="Iosevka Curly Slab" \
		--variable fontsize=11pt \
		--highlight-style=tango \
		-f markdown  $< \
		-o $@

.PHONY : clean

clean:
	rm -f $(output)/*.pdf
