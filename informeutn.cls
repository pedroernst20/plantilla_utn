% plantillautn.cls ^-^
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{informeutn}[2025/04/05 Clase para informes UTN-FRC]

\newif\ifchaptersright
\chaptersrightfalse % valor por defecto

\DeclareOption{chaptersright}{\chaptersrighttrue}

\ExecuteOptions{}
\ProcessOptions\relax

\ifchaptersright
  \LoadClass[12pt,openright,twoside]{report}
\else
  \LoadClass[12pt,openany]{report}
\fi

% Paquetes esenciales
\RequirePackage{emptypage}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{amsmath, amsfonts}
\RequirePackage{xfrac}
\RequirePackage{float}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{indentfirst}
\RequirePackage{tikz}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{afterpage}
\RequirePackage{etoolbox}
\RequirePackage[siunitx]{circuitikz}
\RequirePackage[hidelinks]{hyperref}

% Márgenes y geometría
\geometry{
  left=2.5cm, right=2.5cm,
  top=2cm, bottom=2cm,
  includehead
}

% Encabezados y pies de página
\pagestyle{fancy}
\fancyhf{}
\lhead{UTN-FRC}
\rhead{\@materia}
\cfoot{\thepage}
\setlength{\headheight}{15pt}
\setlength{\headsep}{20pt}
\setlength{\headwidth}{\textwidth}

% Comandos personalizados
\newcommand{\materia}[1]{\def\@materia{#1}}
\newcommand{\titulo}[1]{\def\@titulo{#1}}
\newcommand{\@subtitulo}{}  % Inicialmente vacío
\newcommand{\subtitulo}[1]{\def\@subtitulo{#1}}
\newcommand{\autores}[1]{\def\@autores{#1}}
\newcommand{\fecha}[1]{\def\@fecha{#1}}

% UNIDADES UTILES
% --- Resistencias ---
\newcommand{\kohm}{\,\mathrm{k}\Omega}
\newcommand{\Mohm}{\,\mathrm{M}\Omega}

% --- Capacitancias ---
\newcommand{\nF}{\,\mathrm{nF}}
\newcommand{\uF}{\,\mathrm{\mu F}}
\newcommand{\mF}{\,\mathrm{mF}}

% --- Tensión ---
\newcommand{\mV}{\,\mathrm{mV}}
\newcommand{\V}{\,\mathrm{V}}
\newcommand{\kV}{\,\mathrm{kV}}

% --- Corriente ---
\newcommand{\uA}{\,\mathrm{\mu A}}
\newcommand{\mA}{\,\mathrm{mA}}
\newcommand{\A}{\,\mathrm{A}}

% --- Inductancias ---
\newcommand{\mH}{\,\mathrm{mH}}
\newcommand{\uH}{\,\mathrm{\mu H}}
\newcommand{\nH}{\,\mathrm{nH}}

% Estilo de capítulos y secciones
\titleformat{\chapter}[hang]{\normalfont\LARGE\bfseries}{}{0pt}{}
\titlespacing*{\chapter}{10pt}{0pt}{20pt}
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}

\titleformat{\section} {\normalfont\Large\bfseries} {}{0pt}{}
\titlespacing*{\section} {12pt}{18pt plus 2pt minus 2pt}{8pt}

\titleformat{\subsection} {\normalfont\large\bfseries}{}{0pt}{}
\titlespacing*{\subsection} {15pt}{12pt plus 1pt minus 1pt}{6pt}

% Índice
\renewcommand{\contentsname}{Tabla de Contenidos}

% Carátula automática
\def\maketitle{
  \begin{titlepage}
    \centering
    \vspace*{1cm}
    \includegraphics[width=0.3\textwidth]{UTN_logo.png}\par\vspace{1cm}
    {\Huge Universidad Tecnológica Nacional\\
    Facultad Regional Córdoba\par}
    \vspace{2cm}
    {\Huge \bfseries \@titulo \par}
    {\Large \ \@subtitulo \par}
    \vspace{1.5cm}
    {\LARGE \@materia \par}
    \vfill
    {\Large \@autores \par}
    \vspace{1cm}
    {\Large Fecha de entrega: \@fecha \par}
  \end{titlepage}
}
