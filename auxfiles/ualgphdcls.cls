%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           PhD Thesis LaTeX Class for the University of Algarve            %
%                             Faro, Portugal                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author      : Fernando Mendonça (PhD Student in Marine Sciences)          %
%                                                                           %
% Affiliation : CIMA UAlg                                                   %
%                                                                           %
% Version     : April 2026                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  GENERAL SETTINGS
% LaTeX version for the class and its identification:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ualgphdcls}[2026.apr UAlg PhD LaTeX class]

% This classs is based on the book class with standard text size of 12pt:
\LoadClass[12pt, oneside]{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% IMPORT PACKAGES (add only, do not remove)
\RequirePackage{amsmath}
\RequirePackage{amssymb}   % math symbols
\RequirePackage[
  backend=biber,
  style=authoryear-comp,
  sorting=nyt,
  maxcitenames=2,
  mincitenames=1,
  maxbibnames=99,
  uniquelist=false,
  dashed=false,
  uniquename=false
]{biblatex}

\RequirePackage[portuguese,english]{babel}

\RequirePackage{calc}
\RequirePackage{caption}
\RequirePackage{doi}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage[T1]{fontenc}
\RequirePackage[a4paper, margin=25mm]{geometry}
\RequirePackage{graphicx}  % images
\RequirePackage{hyperref}
\RequirePackage{cleveref}  % should load after hyperref
\RequirePackage{lipsum}
\RequirePackage{lmodern}
\RequirePackage{mfirstuc}
\RequirePackage{multicol}  % tables
\RequirePackage{multirow}  % tables
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{xcolor}

\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{tabularx}

% Packages settings:
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=magenta,      
    urlcolor=blue,
    citecolor=blue,
    }
\urlstyle{same}

\captionsetup{
	labelfont=bf,
	textfont=normalfont,
	justification=justified,
	font=footnotesize
}

\captionsetup[table]{position=top}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% MARGINS
% help: https://www.overleaf.com/learn/latex/Page_size_and_margins
%       https://www.youtube.com/watch?v=6ql7537uyMI&ab_channel=Arenarius

% Distances can be given in inches (in), millimeters (mm), points (pt)...

% Packages to view the margins (to make adjustments):
%\RequirePackage{showframe}
%\RequirePackage{layout}
% The last package requires to add the command
% \layout in text of the main .TEX file.

% To manually edit the geometry, check the help
% links and use the following structure:
%\setlength{\hoffset}{25mm}
%\setlength{\textwidth}{\paperwidth-25mm*2}

% \setlength can be used for all the dimensions listed in the
% first help link. Together with the package calc, a length
% can be set regarding another parameter.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TEXT FORMAT
% help: https://www.overleaf.com/learn/latex/Page_numbering
%       https://www.overleaf.com/learn/latex/Headers_and_footers
%       https://www.overleaf.com/learn/latex/Font_sizes%2C_families%2C_and_styles

% Set line spacing:
\onehalfspacing
% \singlespacing

% Paragraph formatting (vspace after each paragraph):
\setlength{\parskip}{0.5\baselineskip}
\setlength{\parindent}{0pt}  % zero for no paragraph indentation

% Set paging:
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}  % no head rule

\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyfoot[R]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}%

% Figures, Tables and Equations references in bold:
\Crefformat{equation}{Equation~#2#1#3}
\newcommand{\bCref}[1]{\textbf{\Cref{#1}}}
\newcommand{\bref}[1]{\textbf{\ref{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PREAMBLE
% help: https://www.overleaf.com/learn/latex/Commands#Defining_a_new_command
\newcommand{\ualgsubt}[1]{\newcommand{\@ualgsubt}{#1}}
\newcommand{\ualgcourse}[1]{\newcommand{\@ualgcourse}{#1}}
\newcommand{\ualgspec}[1]{\newcommand{\@ualgspec}{#1}}
\newcommand{\ualginstitute}[1]{\newcommand{\@ualginstitute}{#1}}

% Supervisors:
\newcommand{\ualgsupervisors}{}
\newcommand{\addsupervisor}[1]{\listadd{\ualgsupervisors}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% COVER
% Help: https://www.overleaf.com/learn/latex/How_to_Write_a_Thesis_in_LaTeX_(Part_5)%3A_Customising_Your_Title_Page_and_Abstract
\renewcommand\maketitle{%
\begin{titlepage}
    \begin{center}
      {\sffamily\bfseries\large \@author} \par
      \vspace*{70mm}
      {\sffamily\bfseries\LARGE \@title} \par
      \vspace{5mm}
      {\sffamily\large \@ualgsubt} \par
      \vfill
      \includegraphics[width=0.15\textwidth]{./auxfiles/ualg_logo} \par
      {\sffamily\bfseries\large UNIVERSIDADE DO ALGARVE} \par
      {%%
      \sffamily\large \@ualginstitute \par
      \@date \par
      }%%
    \end{center}
\end{titlepage}

% Second cover:
\begin{titlepage}
    \begin{center}
        {\sffamily\bfseries\large \@author} \par
        \vspace*{70mm}
        {\sffamily\bfseries\LARGE \@title} \par
        \vspace{5mm}
        {\sffamily\large \@ualgsubt} \par
        \vfill
    \end{center}
    \begin{flushright}
        {%%
        \sffamily\bfseries \@ualgcourse \par
        \ifdefempty{\@ualgspec}{}{(Especialidade em \@ualgspec)} \par
        Trabalho efetuado sob a orientação de: \par
        \def\do##1{##1\par}            % action for each item
        \dolistloop{\ualgsupervisors}  % run \ualgsupervisors items
        }%%
    \end{flushright}
    \begin{center}
        \vfill
        \includegraphics[width=0.15\textwidth]{./auxfiles/ualg_logo} \par
        {\sffamily\bfseries\large UNIVERSIDADE DO ALGARVE} \par
        {%%
        \sffamily\large \@ualginstitute \par
        \@date \par
        }%%
    \end{center}
\end{titlepage}

% Copyright:
\begin{titlepage}
    {%
    \parindent=0pt \small
    \@title \par
    \vspace*{5mm}
    \begin{center} \textbf{\large Declaração de Autoria de trabalho} \end{center} \par
    \vspace*{5mm}
    Declaro ser o(a) autor(a) deste trabalho, que é original e inédito. Autores e trabalhos consultados estão devidamente citados no texto e constam da listagem de referências incluída. \par
    \vspace*{30mm}
    \begin{center} Copyright \copyright \@author \end{center} \par
    \vspace*{30mm}
    A Universidade do Algarve reserva para si o direito, em conformidade com o disposto no Código do Direito de Autor e dos Direitos Conexos, de arquivar, reproduzir e publicar a obra, independentemente do meio utilizado, bem como de a divulgar através de repositórios científicos e de admitir a sua cópia e distribuição para fins meramente educacionais ou de investigação e não comerciais, conquanto seja dado o devido crédito ao autor e editor respetivos. \par
    }%
\end{titlepage}
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TABLE OF CONTENTS
% Rename title to "Table of Contents"
\renewcommand{\contentsname}{Table of Contents}

% Leading dots:
\renewcommand{\cftdot}{.}       % Set dot
\renewcommand{\cftdotsep}{2.5}  % Dot spacing

% Ensures that chapters and sections have leading dots:
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}

% Line spacing settings (optional):
%\setlength{\cftbeforechapskip}{3pt}
%\setlength{\cftbeforesecskip}{2pt}

% Font settings (optional):
\renewcommand{\cftchapfont}{\bfseries}         % Chapters in bold
\renewcommand{\cftsecfont}{\normalfont}        % Normal sections
\renewcommand{\cftsubsecfont}{\normalfont}     % Normal subsections
\renewcommand{\cftchappagefont}{\bfseries}     % Bold numbers

\renewcommand{\cftchappresnum}{CHAPTER\ }
\renewcommand{\cftchapaftersnum}{:\ }
\setlength{\cftchapnumwidth}{8em}

% List of figures:
\setlength{\cftbeforefigskip}{0.1\baselineskip} % space between itens

\makeatletter
\renewcommand*{\l@figure}[2]{%
  \ifnum \c@lofdepth >\z@
    \vskip \cftbeforefigskip
    {%
	  \singlespacing
	  \setlength{\parskip}{0pt}
      \leftskip=0pt
      \rightskip=\@tocrmarg
      \parfillskip=-\rightskip
      \parindent=0pt
      \interlinepenalty\@M
      \leavevmode
      \renewcommand{\numberline}[1]{\textbf{Figure ##1: }\normalfont}%
      #1\nobreak\cftdotfill{\cftdotsep}#2\par
    }%
  \fi
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CHAPTERS FORMAT
%\renewcommand{\chaptername}{CHAPTER}                     % all caps and bold
\renewcommand{\chaptername}{{\mdseries\scshape Chapter}}  % small caps
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}

% Figures numbering:
\makeatletter                    % allows to use the character @
\@addtoreset{figure}{chapter}    % restart figure number when chapter changes
\@addtoreset{table}{chapter}     % same for tables
\@addtoreset{equation}{chapter}  % same for equations
\makeatother                     % end the charcter @ usage

% Use arabic numbers in figures and tables:
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

% How the chapter title appears on the page:
\makeatletter
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      {\Huge \mdseries \scshape \chaptername\space \thechapter
       \par\nobreak
       \vskip 20\p@}%
    \fi
    {\Huge \bfseries #1\par\nobreak
     \vskip 40\p@}%
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    {\Huge \bfseries #1\par\nobreak
     \vskip 40\p@}%
  }}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% BIBLIOGRAPHY
% https://www.overleaf.com/learn/latex/Biblatex_citation_styles
\addbibresource{references.bib}
