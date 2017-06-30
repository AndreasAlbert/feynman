for dir in ./*/; do
	pushd ${dir};
	for file in graph*.tex; do
		pdflatex "${file}";
	done
	popd;
done

for pdf in $(find -name "*.pdf");
	do pdftops -eps "${pdf}";
done
