
.PHONY: serve

serve: index.html
	bundle exec jekyll serve

v1.2.html: studying.md
	pandoc -s --mathjax -t revealjs --slide-level 2 $^ -o $@
