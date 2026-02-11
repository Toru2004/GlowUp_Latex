FROM texlive/texlive:latest

WORKDIR /workdir

RUN tlmgr install babel-vietnamese

CMD ["latexmk", "-xelatex", "main.tex"]
