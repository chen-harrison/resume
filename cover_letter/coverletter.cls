% Required for all classes
\NeedsTeXFormat{LaTeX2e}
% Class name, date, descrip
\ProvidesClass{coverletter}[2025-01-28 Custom cover letter class]

% Load default article class for missing commands (enables enumitem)
\LoadClass{article}

% Font sizes
\renewcommand{\small}{\fontsize{8pt}{9.6pt}\selectfont}
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\renewcommand{\large}{\fontsize{16pt}{19.2pt}\selectfont}
\renewcommand{\Huge}{\fontsize{28pt}{33.6pt}\selectfont}

% Packages used
\RequirePackage{enumitem}
\RequirePackage[a4paper, margin=1.0in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{helvet}
\RequirePackage[colorlinks=true, urlcolor=blue]{hyperref}

% Page numbering method (required)
\pagenumbering{gobble}

% Use serif font (package: helvet)
\renewcommand{\familydefault}{\sfdefault}

% No indent
% \setlength\parindent{0pt}

% Left justify text
\raggedright

% -------------------- COMMANDS --------------------

% Horizontal line
% - arg1 = line thickness
\renewcommand{\hline}[1]{\rule{\textwidth}{#1} \par}

% Name, aka cover letter header
% - arg1 = name
\newcommand{\name}[1]{
  \begin{center}\large\uppercase{\textbf{#1}}
\end{center}\vspace{-4pt}}

\newcommand{\contactinfo}[3]{\vspace{-10pt}
  \begin{center}\small
    #1 \hspace{4pt}\textbullet\hspace{4pt} 
    #2 \hspace{4pt}\textbullet\hspace{4pt}
    #3
\end{center}\vspace{-10pt}}
