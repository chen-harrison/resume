% Required for all classes
\NeedsTeXFormat{LaTeX2e}
% Class name, date, descrip
\ProvidesClass{resume}[2024-11-14 Custom resume class]

% Load default article class for missing commands (enables enumitem)
\LoadClass{article}

% Font sizes
\renewcommand{\small}{\fontsize{8pt}{9.6pt}\selectfont}
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\renewcommand{\large}{\fontsize{16pt}{19.2pt}\selectfont}
\renewcommand{\Huge}{\fontsize{28pt}{33.6pt}\selectfont}

% Packages used
\RequirePackage[a4paper, margin=0.5in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{helvet}
\RequirePackage[colorlinks=true, urlcolor=blue]{hyperref}

% Page numbering method (required)
\pagenumbering{gobble}

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
\newcommand{\name}[1]{\begin{flushleft}\Huge\uppercase{\textbf{#1}}\end{flushleft}\vspace{-4pt}}

% Add icon centered on line, 12pt wide by default (optional arg)
% - arg1 = (optional, default 12pt) width of icon
% - arg2 = name of icon image (no file extension)
\newcommand{\icon}[2][12pt]{%
    \hspace{-5pt}%
    $%
    \begin{array}{l}%
    \includegraphics[width=#1]{img/#2.png}%
    \end{array}%
    $%
    \hspace{-5pt}%
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
\renewcommand{\section}[1]{%
    \hline{0.5pt}%
    \vspace{8pt}%
    \begin{large}%
        \uppercase{\textbf{#1}}%
    \end{large}%
    \vspace{8pt}\par%
}

% Creates a new entry for experience/education
% - arg1 = role title
% - arg2 = organization
% - arg3 = location
% - arg4 = time frame
\newcommand{\entry}[4]{%
    \textbf{#2}, #3 \hfill #4 \\%
    \emph{#1}%
}

% Creates a bullet list with proper formatting for details about each entry
\newenvironment{details}{\begin{itemize}[leftmargin=*,labelsep=10pt,itemindent=0pt,topsep=0pt,itemsep=-2pt,before=\vspace{2pt},after=\vspace{8pt}]}{\end{itemize}}
