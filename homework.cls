\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[Homework class]

\LoadClass[a4paper,12pt,parskip]{scrartcl}
\usepackage[a4paper,total={155mm,257mm},top=20mm,includefoot]{geometry}

\usepackage{fontspec}
\setmainfont{STIX Two Text} % hlavní font
\setsansfont{Myriad Pro} % font pro nadpisy

\usepackage{polyglossia} 
\setdefaultlanguage{czech} % česká sazba
\usepackage{xevlna} % předložky

\usepackage{unicode-math}
\setmathfont{STIX Two Math} % font na matematiku
\usepackage{amsmath}


\usepackage{graphicx}
\usepackage{float}
\usepackage{xcolor}
\usepackage[intoc]{nomencl}
\usepackage{microtype}
\usepackage{bookmark}
\usepackage{enumerate} 
\usepackage{tikz} 
\usepackage{tabularx}
\usepackage{booktabs}
\renewcommand{\arraystretch}{1.0}

\usepackage{ragged2e}
\usepackage{enumitem}

\usepackage{caption}
\usepackage{subcaption}

\usepackage{hyperref} % odkazy v pdf
\hypersetup{pdfborder = {0 0 0}}
\emergencystretch=1em 

\setlength{\jot}{10pt} % mezera mezi rovnicemi
\renewcommand{\baselinestretch}{1.5} % řádkování


\newcommand*{\schsubject}[1]{\gdef\@schsubject{#1}} 
\newcommand*{\osobcislo}[1]{\gdef\@osobcislo{#1}}
\newcommand*{\schyear}[1]{\gdef\@schyear{#1}}
\newcommand*{\schgroup}[1]{\gdef\@schgroup{#1}}



% titlepage

\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \begin{center}
		\begin{figure}[ht!]
			\centering
			\includegraphics[width=\textwidth]{pictures/FS-361-b} % logo katedry
		\end{figure}
		\vspace{55mm}
		\huge\sffamily{\textbf{\@schsubject}}\\
		\LARGE\sffamily{\@title}
		\vfill
		\begin{flushleft}
			\large{\@author  \hfill \@schgroup\\
			\@osobcislo \hfill \@schyear}
		\end{flushleft}
    \end{center}
    \clearpage
}
