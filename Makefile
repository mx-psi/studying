
.PHONY: serve

serve: index.html
	bundle exec jekyll serve

index.html: studying.md
	pandoc -s --mathjax -t revealjs --slide-level 2 $^ -o $@
