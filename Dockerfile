FROM blang/latex:ctanfull

WORKDIR /workdir

CMD ["latexmk", "-pdf", "main.tex"]
