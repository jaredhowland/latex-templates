\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bringhurst}[2016/03/22 Provides styles to format a book similar to Bringhurst’s “The Elements of Typographic Style”]

%%%%%%%%%%%%%%%%%%%%%%
% Declare and process
% options
%%%%%%%%%%%%%%%%%%%%%%
%---------------------
% Family tree
%---------------------
\newif\if@familytree\@familytreefalse
\DeclareOption{familytree}{
  \@familytreetrue
}

%---------------------
% Book sizes
%---------------------
\DeclareOption{statementpaperbr}{\def \booksize {statementpaperbr}} % lulu.com: Digest size
\DeclareOption{letterpaperbr}{\def \booksize {letterpaperbr}}% lulu.com: US Paper size
\DeclareOption{pocketbook}{\def \booksize {pocketbook}}
\DeclareOption{a5paperbr}{\def \booksize {a5paperbr}}% lulu.com: A5 Paper size
\DeclareOption{ustrade}{\def \booksize {ustrade}}
\DeclareOption{royal}{\def \booksize {royal}}
\DeclareOption{comicbook}{\def \booksize {comicbook}}
\DeclareOption{crownquarto}{\def \booksize {crownquarto}}
\DeclareOption{smallsquare}{\def \booksize {smallsquare}}
\DeclareOption{a4paperbr}{\def \booksize {a4paperbr}}% lulu.com: A4 Paper size
\DeclareOption{square}{\def \booksize {square}}
\DeclareOption{landscape}{\def \booksize {landscape}}
\DeclareOption{eightbyten}{\def \booksize {eightbyten}}
\DeclareOption{largelandscape}{\def \booksize {largelandscape}}
\DeclareOption{largesquare}{\def \booksize {largesquare}}
\DeclareOption{bringhurstsize}{\def \booksize {bringhurstsize}}

%---------------------
% Send all other
% options to memoir
% class
%---------------------
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{memoir}
}

%---------------------
% Use options
%---------------------
\ExecuteOptions{ustrade,10pt,final}% Set defaults
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%
% memoir class
%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{memoir}

%%%%%%%%%%%%%%%%%%%%%%
% Required Packages
%%%%%%%%%%%%%%%%%%%%%%
%---------------------
% Packages to draw a
% family tree
%---------------------
\if@familytree% Only include ps- packages if familytree option is set
  \RequirePackage{pstricks, pst-node, pst-tree}
\fi

%---------------------
% Fine-tuned
% typographical
% control
%---------------------
\RequirePackage[protrusion=true, final]{microtype}

%---------------------
% Custom \itemize
% style
%---------------------
\RequirePackage{enumitem}
% Align first item with left margin (bullet hangs into the margin)
% Subsequent sub-items indent their default indent after that
\setlist[1]{nolistsep,leftmargin=0pt}

%---------------------
% Drop caps to begin
% each chapter
%---------------------
\RequirePackage{lettrine}
% Usage: \lettrine[lines=3,slope=-4pt,nindent=-4pt]{E}{xample}

%---------------------
% Slanted inline
% fractions
%---------------------
\RequirePackage{xfrac}

%---------------------
% Allow system fonts
% to be used
%---------------------
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define size of paper
% and margins
%
% Margin proportions based on
% Robert Bringhurst’s “The Elements
% of Typographic Style”
%
% Based on lulu.com options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def \statementpaperbr {statementpaperbr}
\ifx \booksize \statementpaperbr
  \setstocksize{8.5in}{5.5in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.52in}{1.31in}{*}
  \setulmarginsandblock{0.71in}{1.18in}{*}
\fi

\def \letterpaperbr {letterpaperbr}
\ifx \booksize \letterpaperbr
  \setstocksize{11in}{8.5in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.81in}{2.02in}{*}
  \setulmarginsandblock{0.92in}{1.53in}{*}
\fi

\def \pocketbook {pocketbook}
\ifx \booksize \pocketbook
  \setstocksize{6.87in}{4.25in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.4in}{1.01in}{*}
  \setulmarginsandblock{0.57in}{0.95in}{*}
\fi

\def \a5paperbr {a5paperbr}
\ifx\booksize\a5paperbr
  \setstocksize{8.26in}{5.83in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.56in}{1.39in}{*}
  \setulmarginsandblock{0.69in}{1.15in}{*}
\fi

\def \ustrade {ustrade}
\ifx \booksize \ustrade
  \setstocksize{9in}{6in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.7in}{1.3in}{*}
  \setulmarginsandblock{0.75in}{1.25in}{*}
\fi

\def \royal {royal}
\ifx \booksize \royal
  \setstocksize{9.21in}{6.13in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.58in}{1.46in}{*}
  \setulmarginsandblock{0.77in}{1.28in}{*}
\fi

\def \comicbook {comicbook}
\ifx \booksize \comicbook
  \setstocksize{10.25in}{6.625in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.63in}{1.58in}{*}
  \setulmarginsandblock{0.85in}{1.42in}{*}
\fi

\def \crownquarto {crownquarto}
\ifx \booksize \crownquarto
  \setstocksize{9.68in}{7.44in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.71in}{1.77in}{*}
  \setulmarginsandblock{0.81in}{1.34in}{*}
\fi

\def \smallsquare {smallsquare}
\ifx \booksize \smallsquare
  \setstocksize{7.5in}{7.5in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.71in}{1.79in}{*}
  \setulmarginsandblock{0.63in}{1.04in}{*}
\fi

\def \a4paperbr {a4paperbr}
\ifx \booksize \a4paperbr
  \setstocksize{11.69in}{8.26in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.79in}{1.97in}{*}
  \setulmarginsandblock{0.97in}{1.62in}{*}
\fi

\def \square {square}
\ifx \booksize \square
  \setstocksize{8.5in}{8.5in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.81in}{2.02in}{*}
  \setulmarginsandblock{0.71in}{1.18in}{*}
\fi

\def \landscape {landscape}
\ifx \booksize \landscape
  \setstocksize{7in}{9in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.86in}{2.14in}{*}
  \setulmarginsandblock{0.58in}{0.97in}{*}
\fi

\def \eightbyten {eightbyten}
\ifx \booksize \eightbyten
  \setstocksize{10.75in}{8.25in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.79in}{1.96in}{*}
  \setulmarginsandblock{0.9in}{1.49in}{*}
\fi

\def \largelandscape {largelandscape}
\ifx \booksize \largelandscape
  \setstocksize{10.75in}{12.75in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{1.21in}{3.04in}{*}
  \setulmarginsandblock{0.9in}{1.49in}{*}
\fi

\def \largesquare {largesquare}
\ifx \booksize \largesquare
  \setstocksize{12in}{12in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{1.14in}{2.86in}{*}
  \setulmarginsandblock{1in}{1.67in}{*}
\fi

\def \bringhurstsize {bringhurstsize}
\ifx \booksize \bringhurstsize
  \setstocksize{9in}{5.25in}
  \settrimmedsize{\stockheight}{\stockwidth}{*}
  \setlrmarginsandblock{0.5in}{1.25in}{*}
  \setulmarginsandblock{0.75in}{1.25in}{*}
\fi

%%%%%%%%%%%%%%%%%%%%%%
% Page breaks
%%%%%%%%%%%%%%%%%%%%%%
\sloppybottom

% set \clubpenalty, etc. to distinctive values for use
% in tracing page breaks. These values are chosen so that
% no single penalty will absolutely prohibit a page break, but
% certain combinations of two or more will.
\clubpenalty=9996
\widowpenalty=9999
\brokenpenalty=4991
% Reiterate the default value of \redisplaypenalty, for
% completeness.
% Set postdisplaypenalty to a fairly high value to discourage a
% page break between a display and a widow line at the end of a
% paragraph.
\predisplaypenalty=10000
\postdisplaypenalty=1549
% And then \displaywidowpenalty should be at least as high as
% \postdisplaypenalty, otherwise in a situation where two displays
% are separated by two lines, TeX will prefer to break between the
% two lines, rather than before the first line.
\displaywidowpenalty=1602

\setheadfoot{0in}{3\onelineskip}
\checkandfixthelayout
\checkthelayout
\fixthelayout
\fixpdflayout

%%%%%%%%%%%%%%%%%%%%%%
% Typeset poetry
%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\poemtitlefont}{\normalfont\large\itshape\centering}

%%%%%%%%%%%%%%%%%%%%%%
% Custom \part page
%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\partnamefont}{\itshape\raggedleft}
\renewcommand{\partnumfont}{\itshape}
\renewcommand{\parttitlefont}{\itshape}
\aliaspagestyle{part}{empty}

%%%%%%%%%%%%%%%%%%%%%%
% Make label ragged
% right
%%%%%%%%%%%%%%%%%%%%%%
\captiontitlefont{\raggedright}

%%%%%%%%%%%%%%%%%%%%%%
% Customize Table of
% Contents
%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\setupshorttoc} {%
    % Only show chapters and above in ToC
    \setcounter{tocdepth}{0}

    % Remove chapter numbers from the ToC
    \renewcommand{\partnumberline}[1]{}
    \renewcommand{\chapternumberline}[1]{}

    % Format parts in ToC
    \renewcommand*{\cftpartfont}{\hfill\sffamily\itshape\Large}
    \renewcommand*{\cftpartleader}{\space\textperiodcentered\space}
    \renewcommand*{\cftpartafterpnum}{\cftparfillskip}
    \renewcommand*{\cftpartfillnum}[1] {%
        {\cftpartleader}\nobreak
        \hbox to 1.5em{\itshape ##1\hfil}\cftpartafterpnum\par
    }

    % Format chapters in ToC
    \renewcommand*{\cftchapterfont}{\hfill\sffamily}
    \renewcommand*{\cftchapterleader}{\space\textperiodcentered\space}
    \renewcommand*{\cftchapterafterpnum}{\cftparfillskip}
    \renewcommand*{\cftchapterfillnum}[1] {%
        {\cftchapterleader}\nobreak
        \hbox to 1.5em{\itshape ##1\hfil}\cftchapterafterpnum\par
    }
    \setrmarg{0.3\textwidth}
}
\setupshorttoc

%%%%%%%%%%%%%%%%%%%%%%
% Bringhurst chapter
%%%%%%%%%%%%%%%%%%%%%%
\makechapterstyle{bringhurst} {%
    \renewcommand{\chapterheadstart}{}
    \renewcommand{\printchaptername}{}
    \renewcommand{\chapternamenum}{}
    \renewcommand{\printchapternum}{}
    \renewcommand{\afterchapternum}{}
    \renewcommand{\printchaptertitle}[1] {%
        \raggedright\LARGE\scshape\MakeLowercase{##1}
    }
    \renewcommand{\afterchaptertitle} {%
        \vskip\onelineskip \hrule\vskip\onelineskip
    }
}
\chapterstyle{bringhurst}

%%%%%%%%%%%%%%%%%%%%%%
% Bringhurst section
%%%%%%%%%%%%%%%%%%%%%%
\setsecnumdepth{part}
\setsecheadstyle{\raggedright\scshape\MakeLowercase}
    \setbeforesecskip{-\onelineskip}
    \setaftersecskip{\onelineskip}

%%%%%%%%%%%%%%%%%%%%%%
% Bringhurst
% subsection
%%%%%%%%%%%%%%%%%%%%%%
\setsubsecheadstyle{\sethangfrom{\noindent ##1}\raggedright\itshape}
    \setbeforesubsecskip{-\onelineskip}
    \setaftersubsecskip{\onelineskip}

%%%%%%%%%%%%%%%%%%%%%%
% Custom headers and
% footers
%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{}

\makepagestyle{bringhurst}
    \makeevenfoot{bringhurst}{\thepage}{}{\itshape\leftmark}
    \makeoddfoot{bringhurst}{\itshape\rightmark}{}{\thepage}
\pagestyle{bringhurst}               % Make this style the default on main text
\aliaspagestyle{chapter}{bringhurst} % Make this style the default for the first page of each chapter

\endinput
