% ========= Config paper and font =============
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mobilereport}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[14pt,a4paper]{memoir}

% ========== Require package to setup paper, link, language ==========
\RequirePackage{anyfontsize,mathptmx}
\RequirePackage[T5]{fontenc}
\RequirePackage{geometry,graphicx,indentfirst,setspace}
\RequirePackage{tikz}
\RequirePackage[center]{caption}
\RequirePackage{fancyhdr,hyperref}
\RequirePackage[english,vietnamese]{babel}
\RequirePackage[utf8]{vietnam}
\RequirePackage{listings}
\RequirePackage{graphicx}
\RequirePackage{glossaries}
\RequirePackage[fontsize=13pt]{scrextend}
\RequirePackage{placeins}
\RequirePackage{amsfonts}
\RequirePackage{float}
\RequirePackage{textcomp}
\RequirePackage{dblfloatfix}
\RequirePackage{lineno}
\RequirePackage{amssymb}
\RequirePackage{tabularx,booktabs}
\RequirePackage{longtable}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{graphicx}
\RequirePackage{lscape}
\RequirePackage{caption}
\RequirePackage[autostyle,english=american]{csquotes}
\RequirePackage[backend=biber,sorting=nyt]{biblatex}
\RequirePackage{mathtools}
\RequirePackage{lipsum,blindtext}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{makecell}
\RequirePackage{listings}
\RequirePackage{subcaption}
\RequirePackage{adjustbox}
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{rotating}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tocloft}
\RequirePackage{enumitem}
\usetikzlibrary{calc}

\DeclareLanguageMapping{english}{english}

% Define color and column type
\hypersetup{urlcolor=blue,linkcolor=black,citecolor=black,colorlinks=true} 
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}

% Config figure path
\graphicspath{{./graphics}}

% Define the desired distance from the top of the page
\newlength{\chaptertopmargin}
\setlength{\chaptertopmargin}{2cm} % Adjust the value as needed
\titlespacing*{\chapter}{0pt}{\chaptertopmargin}{20pt} % Adjust the second value for space before chapter titles

% Config for math in quantum computing
\DeclarePairedDelimiter\bra{\langle}{\rvert}
\DeclarePairedDelimiter\ket{\lvert}{\rangle}
\DeclarePairedDelimiterX\braket[2]{\langle}{\rangle}{#1 \delimsize\vert#2}

% Config listings
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=fullflexible,
  basicstyle={\small\ttfamily},
  numbers=left,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
  tabsize=4
}

% Set command to provide param
\newcommand{\@upperuniname}{}
\newcommand{\upperuniname}[1]{\renewcommand{\@upperuniname}{#1}}
\newcommand{\@uniname}{}
\newcommand{\uniname}[1]{\renewcommand{\@uniname}{#1}}
\newcommand{\@deptname}{}
\newcommand{\deptname}[1]{\renewcommand{\@deptname}{#1}}
\newcommand{\@reporttype}{}
\newcommand{\reporttype}[1]{\renewcommand{\@reporttype}{#1}}
\newcommand{\@stumajor}{}
\newcommand{\stumajor}[1]{\renewcommand{\@stumajor}{#1}}
\newcommand{\@titleen}{}
\newcommand{\titleen}[1]{\renewcommand{\@titleen}{#1}}
\newcommand{\@defcouncil}{Council}
\newcommand{\defcouncil}[1]{\renewcommand{\@defcouncil}{#1}}
\newcommand{\@supervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}
\newcommand{\@supervisorname}{}
\newcommand{\supervisorname}[1]{\renewcommand{\@supervisorname}{#1}}
\newcommand{\@secretary}{Secretary}
\newcommand{\secretary}[1]{\renewcommand{\@secretary}{#1}}
\newcommand{\@instruction}{}
\newcommand{\instruction}[1]{\renewcommand{\@instruction}{#1}}
\newcommand{\@stuname}{}
\newcommand{\stuname}[1]{\renewcommand{\@stuname}{#1}}
\newcommand{\@reportplace}{}
\newcommand{\reportplace}[1]{\renewcommand{\@reportplace}{#1}}
\newcommand{\@stunamelist}{}
\newcommand{\stunamelist}[1]{\renewcommand{\@stunamelist}{#1}}


% Overwrite default settings
\renewcommand{\@title}{}
\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\large}{\fontsize{15}{15}\selectfont}
\renewcommand{\Large}{\fontsize{20}{20}\selectfont}
\renewcommand{\arraystretch}{1.2}
\renewcommand*{\lstlistingname}{Đoạn mã}
\renewcommand\lstlistlistingname{Danh sách đoạn mã}

\renewcommand*{\glossarysection}[2][]{%
  \chapter*{Danh sách các từ viết tắt}
  \addcontentsline{toc}{chapter}{Danh sách các từ viết tắt}
}

\renewcommand{\contentsname}{} % Ẩn tiêu đề Mục lục
\renewcommand{\listfigurename}{} % Ẩn tiêu đề Danh sách hình vẽ
\renewcommand{\listtablename}{} % Ẩn tiêu đề Danh sách bảng
\renewcommand{\lstlistlistingname}{} % Ẩn tiêu đề Danh sách đoạn mã
\renewcommand{\glossaryname}{} % Ẩn tiêu đề Danh sách các từ viết tắt

% Setup page geometry
\geometry{
  paper=a4paper,
  left=3cm,
  right=2cm,
  vmargin=2cm,
  includeheadfoot=true,
  headheight=30pt
}
\OnehalfSpacing
\raggedbottom

% Setup TOC
% \usepackage{tocloft}
\setsecnumdepth{subsection}
\settocdepth{subsection}
\setlength{\cfttablenumwidth}{3em}
\setlength{\cftfigurenumwidth}{3em}
\AtBeginDocument{
  \renewcommand{\printchaptername}{Chương}
  \renewcommand{\chapternamenum}{\space\thechapter: }
  \renewcommand{\printchapternum}{\chapternamenum}
  \renewcommand{\afterchapternum}{\hspace{0.5em}}
}

% Setup chapter title
\titleformat{\chapter}[hang]{\bfseries\LARGE}{CHƯƠNG~\thechapter:}{1em}{}

% Create cover page
\pagestyle{fancy}
\fancyhf{}

\def\coverpage{
  \pagestyle{empty}
  \large\bfseries
  \begin{tikzpicture}[remember picture,overlay]
    \draw[line width=3pt](
    $(current page.north west) + (3.0cm,-2.0cm)$
    ) rectangle (
    $(current page.south east) + (-2.0cm,2.0cm)$
    );
    \draw[line width=1pt](
    $(current page.north west) + (2.9cm,-1.9cm)$
    ) rectangle (
    $(current page.south east) + (-1.9cm,1.9cm)$
    );
  \end{tikzpicture}
  \vspace*{-3\baselineskip}
  \begin{center}
    \uppercase{\@upperuniname} \\
    \uppercase{\@uniname} \\
    \uppercase{\@deptname} \\
    \vfill
    \includegraphics[width=0.75\textwidth]{graphics/front/logo_uth.png}
    \vfill
    {\Large\bfseries BÁO CÁO} \\
    \vspace{0.5cm}
    {\Large{\parbox[c]{0.8\linewidth}{\centering\@title}}} \\
    \vfill
    {\large\bfseries NGƯỜI THỰC HIỆN:} \\
    {\large\bfseries \uppercase{\@stunamelist}} \\
    \vspace{0.5cm}
    {\large\bfseries \uppercase{\@instruction}}
  \end{center}
  \vfill\vfill
  \mdseries
  \begin{center}
    \uppercase{\@reportplace \the\year}
  \end{center}
  \normalsize
  \cleardoublepage
  \pagestyle{fancy}
}

\def\mainthesis {
  \counterwithin{equation}{chapter}
  \counterwithin{table}{chapter}
  \counterwithin{figure}{chapter}
  \setcounter{secnumdepth}{2}
  \mainmatter
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \if@twoside
    \fancyhead[EL,OR]{\bfseries\nouppercase\rightmark}
  \else
    \fancyhead[R]{\bfseries\nouppercase\rightmark}
  \fi
}
