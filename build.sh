[[ -d chapters ]] && rm -r chapters && mkdir chapters
for file in Learn-Vim/ch*.md; do
	fn=$(basename $file)
	[[ $fn == "ch00_read_this_first.md" ]] && continue
	cp $file chapters/"$fn".qmd
done

quarto render --html
touch docs/.nojekyll

