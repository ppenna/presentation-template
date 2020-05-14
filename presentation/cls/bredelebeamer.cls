%
% Copyright(c) 2010-2020 Pedro Henrique Penna <pedrohenriquepenna@gmail.com>
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Bredelebeamer}[17/02/2015, v1.0]

\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[compress,9pt,t]{beamer}
\setbeamersize{text margin left=5mm,text margin right=5mm}

% Input Encoding
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\usepackage{pdfpages}

\usepackage{datetime}
\usepackage{pgfgantt}

% Images
\usepackage{graphicx}
\graphicspath{{./img/}}
\DeclareGraphicsExtensions{.pdf,.jpeg,.png,.jpg}
\usepackage{subcaption}
\usepackage{transparent}

% References
\usepackage[backend=bibtex,citestyle=authoryear]{biblatex}
\addbibresource{references.bib}

% Acronyms
\usepackage{xspace}
\usepackage[acronym,nowarn]{glossaries}
\input{acronyms.tex}
\makeglossaries
\glsdisablehyper

% PDF Bookmarks
\usepackage{hyperref}

% URLs
\usepackage{url}

% Tables
\usepackage{etoolbox}
\usepackage{booktabs}
\usepackage{multirow}
\newcommand{\specialcell}[3][c]{%
	\begin{tabular}[#1]%
		{@{}#2@{}}#3
	\end{tabular}
}

% Strike Through
\usepackage{ulem}

%===============================================================================
% Code Snippets
%===============================================================================

\usepackage{listings}
\renewcommand{\lstlistingname}{Snippet}

\definecolor{mGreen}{rgb}{0,0.6,0}
\definecolor{mGray}{rgb}{0.4,0.4,0.4}
\definecolor{mPurple}{rgb}{0.58,0,0.82}
\definecolor{backgroundColour}{rgb}{0.95,0.95,0.92}

\lstset{
backgroundcolor=\color{backgroundColour},
commentstyle=\color{mGray},
keywordstyle=\color{mPurple},
numberstyle=\tiny\color{mGray},
stringstyle=\color{mPurple},
basicstyle=\footnotesize,
breakatwhitespace=false,
breaklines=true,
captionpos=b,
keepspaces=false,
showspaces=false,
showstringspaces=false,
showtabs=false,
	basicstyle=\scriptsize\ttfamily,
	numbers=left,
	stepnumber=2,
	numbersep=-0.75em,
	frame=single,
	tabsize=2,
	float,
}
\resetcounteronoverlays{lstlisting}

\lstdefinelanguage
[x64]{Assembler}     % add a "x64" dialect of Assembler
[x86masm]{Assembler} % based on the "x86masm" dialect
% with these extra keywords:
{%
	morecomment=[l]{//},
	morekeywords={%
		lw, sw, add, srl, copy, %
		$r0,  $r1,   $r2,  $r3,  $r4 , $r5,  $r6,  $r7,
		$r8,  $r9,  $r10, $r11,  $sp,  $bp, $r14, $r15,
		$r16, $r17, $r18, $r19, $r20, $r21, $r22, $r23,
		$r24, $r25, $r26, $r27, $r28, $r29, $r30, $r31,
		$r32, $r33, $r34, $r35, $r36, $r37, $r38, $r39,
		$r40, $r41, $r42, $r43, $r44, $r45, $r46, $r47,
		$r48, $r49, $r50, $r51, $r52, $r53, $r54, $r55,
		$r56, $r57, $r58, $r59, $r60, $r61, $r62, $r63}
}

%===============================================================================

\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}

\definecolor{myBlue}{RGB}{62,73,106}
\definecolor{myRed}{RGB}{131,53,72}
\definecolor{myYellow}{RGB}{255,238,170}
\definecolor{myGreen}{RGB}{131,53,72}


\definecolor{sectionColor}{RGB}{0,0,0}              % noir
\definecolor{subsectionColor}{RGB}{97,97,97}        % Framagris
\definecolor{sectionTextColor}{RGB}{255,255,255}    % blanc
\definecolor{subsectionTextColor}{RGB}{255,255,255} % blanc
\definecolor{leftFootlineColor}{RGB}{0,0,0}         % noir
\definecolor{middleFootlineColor}{RGB}{97,97,97}    % Framagris
\definecolor{rightFootlineColor}{RGB}{0,0,0}        % noir
\definecolor{authorColor}{RGB}{255,255,255}         % blanc
\definecolor{footlineTitleColor}{RGB}{255,255,255}  % blanc
\definecolor{instituteColor}{RGB}{0,0,0}            % noir
\definecolor{dateColor}{RGB}{255,255,255}           % blanc
\definecolor{pageColor}{RGB}{255,255,255}           % blanc
\definecolor{titleTextColor}{RGB}{255,255,255}      % blanc
\definecolor{bodyColor}{RGB}{255,255,255}           % blanc
\definecolor{normalTextColor}{RGB}{0,0,0}           % noir
\definecolor{exampleTextColor}{RGB}{82,99,42}       % Framavertfoncé

\definecolor{chipColor}{RGB}{12,91,122}                    % Framableu
\definecolor{chipTextColor}{RGB}{255,255,255}              % blanc
\definecolor{normalBlockColor}{RGB}{178,213,219}           % Framableulight pour arriere plan du block
\definecolor{normalTitleBlockColor}{RGB}{12,91,122}        % Framableu
\definecolor{normalBlockTextColor}{RGB}{0,0,0}             % noir
\definecolor{normalBlockTitleTextColor}{RGB}{255,255,255}  % blanc
\definecolor{exampleBlockColor}{RGB}{227,235,199}          % Framavertlight pour arriere plan du block
\definecolor{exampleTitleBlockColor}{RGB}{142,156,72}      % Framavert
\definecolor{exampleBlockTextColor}{RGB}{0,0,0}            % noir
\definecolor{exampleBlockTitleTextColor}{RGB}{255,255,255} % blanc
\definecolor{alertBlockColor}{RGB}{249,189,187}            % Framarougelight pour arriere plan du block
\definecolor{alertTitleBlockColor}{RGB}{204,45,24}         % Framarouge
\definecolor{alertBlockTextColor}{RGB}{0,0,0}              % noir
\definecolor{alertBlockTitleTextColor}{RGB}{255,255,255}   % blanc

\setbeamertemplate{blocks}[rectangle]

\setbeamercolor{section in head/foot}{bg=sectionColor, fg=sectionTextColor}
\setbeamercolor{subsection in head/foot}{bg=subsectionColor, fg=subsectionTextColor}
\setbeamercolor*{block title}{fg=normalBlockTitleTextColor,bg=normalTitleBlockColor}
\setbeamercolor*{block body}{fg=normalBlockTextColor,bg=normalBlockColor}
\setbeamercolor*{block title alerted}{fg=alertBlockTitleTextColor,bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{fg=alertBlockTextColor,bg=alertBlockColor}
\setbeamercolor*{block title example}{fg=exampleBlockTitleTextColor,bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{fg=exampleBlockTextColor,bg=exampleBlockColor}
\setbeamercolor{titlelike}{fg=titleTextColor,bg=myBlue}
\setbeamercolor*{normal text}{fg=normalTextColor,bg=bodyColor}
\setbeamercolor*{example text}{fg=exampleTextColor}
\setbeamercolor*{alerted text}{fg=myBlue}
\setbeamercolor{itemize item}{fg=myBlue}
\setbeamercolor{itemize subitem}{fg=myBlue}
\setbeamercolor{itemize subsubitem}{fg=myBlue}
\setbeamercolor{enumerate item}{fg=myBlue}
\setbeamercolor{description item}{fg=myBlue}
\setbeamercolor{caption name}{fg=myBlue}

%===============================================================================

\useinnertheme{default}
\setbeamercolor{item projected}{bg=chipColor,fg=chipTextColor}
\beamer@compresstrue

\defbeamertemplate*{headline}{smoothbars theme}{%
	\begin{beamercolorbox}[ht=2.125ex,dp=3.150ex]{section in head/foot}
	\insertnavigation{\paperwidth}
	\end{beamercolorbox}%
}

\setbeamercolor{author in head/foot}{bg=leftFootlineColor, fg=authorColor}
\setbeamercolor{title in head/foot}{bg=middleFootlineColor, fg=footlineTitleColor}
\setbeamercolor{institute in head/foot}{fg=instituteColor}
\setbeamercolor{date in head/foot}{bg=rightFootlineColor, fg=dateColor}
\defbeamertemplate*{footline}{infolines theme}{%
	\vspace{-1em}
	\leavevmode%
	\hbox{%
		\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
			\usebeamerfont{author in head/foot}%
			\insertshortauthor~~\insertshortinstitute
		\end{beamercolorbox}%
		\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
			\usebeamerfont{title in head/foot}\insertshorttitle
		\end{beamercolorbox}%
			\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
			\usebeamerfont{date in head/foot}%
			\insertshortdate{}\hspace*{2em}%
			\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
		\end{beamercolorbox}
	}%
	\vskip0pt%
}
\mode
<all>
\setbeamerfont{footline}{series={\mdseries},parent=structure}
\setbeamerfont{footline}{size={\scriptsize},parent=structure}


%utilise la couleur Beamer : "example text" pour la couleur du texte
\newcommand{\exemple}[1]{{\color{example text.fg} #1}}


\usepackage{etoolbox}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=exampleTitleBlockColor!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=alertTitleBlockColor!70}
}
\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=normalTitleBlockColor!70}
}

%===============================================================================

% Null Vertical Space
\newcommand{\nullvspace}{\vspace{0em}}

%===============================================================================
% Backup Slides
%===============================================================================

\newenvironment{backup}
	{
		\section*{Backup Slides}
		\newcounter{framenumberbackup}
		\setcounter{framenumberbackup}{\value{framenumber}}
	}
	{
		\addtocounter{framenumberbackup}{-\value{framenumber}}
		\addtocounter{framenumber}{\value{framenumberbackup}}
	}
