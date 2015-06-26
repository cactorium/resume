%% Lots of this based on
%% https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_resume}[2015/06/26 My custom resume class]

\LoadClass{article}

\RequirePackage{hyphenat}
\RequirePackage{titlesec}

\newcommand{\contact}[3]{
    \center{\LARGE #1} \\
	\center{#2}
}

\titleformat{\section}
  {\Large\scshape\raggedright}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\subsection}
  {\normalsize\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{
	\section[#1]{#1\hfill #2}
}
\newcommand{\datedsubsection}[2]{
	\subsection[#1]{\parbox{0.618\linewidth}{\nohyphens{#1}}
		\hfill\makebox{#2}}
}

\newcommand{\education}[4]{
	\section{Education}
	\datedsubsection{#1}{#3}
	Cummulative GPA: #4\hfill Graduating #2
}

