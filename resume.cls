\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024-11-14 Custom resume class]
\RequirePackage{graphicx}
\RequirePackage{helvet}

% Serif font
\renewcommand{\familydefault}{\sfdefault}

% Normal text size
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\newcommand{\small}{\fontsize{8pt}{9.6pt}\selectfont}

% Text region
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9in}

\newcommand{\horiline}[1]{\noindent\rule{\textwidth}{#1}}
\newcommand{\name}[1]{\begin{flushleft}\fontsize{24pt}{30pt}\selectfont\uppercase{\textbf{#1}}\end{flushleft}\vspace{10pt}}
\newcommand{\icon}[1]{%
  \begingroup\normalfont
  \includegraphics[height=10pt]{img/#1.png}%
  \endgroup
}
