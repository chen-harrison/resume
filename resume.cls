% Required for all classes
\NeedsTeXFormat{LaTeX2e}
% Class name, date, descrip
\ProvidesClass{resume}[2024-11-14 Custom resume class]

% Packages used
\RequirePackage[a4paper, margin=0.5in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{helvet}
\RequirePackage[colorlinks=true, urlcolor=blue]{hyperref}

% Text sizes
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont} % Normal
\newcommand{\small}{\fontsize{8pt}{9.6pt}\selectfont} % Small
\newcommand{\large}{\fontsize{16pt}{20pt}\selectfont} % Large

% Page numbering method (required)
\pagenumbering{arabic}

% Use serif font (package: helvet)
\renewcommand{\familydefault}{\sfdefault}

% No indent
\setlength\parindent{0pt}

% -------------------- COMMANDS --------------------

% Horizontal line
% - arg1 = line thickness
\renewcommand{\hline}[1]{\rule{\textwidth}{#1} \par}

% Name, aka resume title
% - arg1 = name
\newcommand{\name}[1]{\begin{flushleft}\fontsize{24pt}{30pt}\selectfont\uppercase{\textbf{#1}}\end{flushleft}\vspace{6pt}}

% Add icon centered on line, 12pt wide by default (optional arg)
% - arg1 = (optional, default 12pt) width of icon
% - arg2 = name of icon image (no file extension)
\newcommand{\icon}[2][12pt]{%
    $%
    \begin{array}{l}%
    \includegraphics[width=#1]{img/#2.png}%
    \end{array}%
    $%
}

% Add info below header, like email, phone number, etc w/ icon beside it
% - arg1 = name of icon image (also info type)
% - arg2 = text next to icon
\newcommand{\info}[2]{%
    \begin{small}%
        \icon{#1} #2 \;%
    \end{small}%
}

% Same as above, but include hyperlink
% - arg1 = name of icon image (also info type)
% - arg2 = text next to icon
% - arg3 = URL to link to
\newcommand{\urlinfo}[3]{%
    \begin{small}%
        \href{#3}{\icon{#1} #2 \;}%
    \end{small}%
}

% Section title, including horizontal line divider above
% - arg1 = section title
\newcommand{\section}[1]{%
    \hline{0.5pt}%
    \vspace{8pt}%
    \begin{large}%
        \uppercase{\textbf{#1}}%
    \end{large}%
    \vspace{8pt}%
}
