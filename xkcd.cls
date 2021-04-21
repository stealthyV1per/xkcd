\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xkcd}[2021/04/21 xkcd Webcomic based LaTeX class]

\LoadClass[a4paper, 12pt, titlepage]{article}

\RequirePackage[hidelinks]{hyperref} % URLs
\RequirePackage{graphicx} % Images
\RequirePackage{float} % Positioning
\RequirePackage{caption} % Hide prefix from captions
\RequirePackage{geometry} % Change paper borders
\geometry{top=20mm, bottom=20mm, left=20mm, right=20mm}
\RequirePackage{xcolor} % colorful text
\RequirePackage{minted} % Inline code snippets
\usemintedstyle{vs}

\pagenumbering{gobble} % Disable page numbers

\makeatletter
\renewcommand\thesection{} % Suppress the section number
\def\blfootnote{\xdef\@thefnmark{}\@footnotetext} % Suppress the footnote number
\makeatother

\newcommand{\xkcd}[4] {
  \section{{#1}}

  \begin{figure}[H]
    \centering
    \includegraphics[width=0.6\textwidth]{./images/#2}
    \caption*{#3}
  \end{figure}

  \blfootnote{\url{#4}}

  \newpage
}
