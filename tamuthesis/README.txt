

Fixes provided by jeffamcgee

Added to the tamuconfig.sty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fix spacing in front of figures
\setlength{\textfloatsep}{40pt plus 8.0pt minus 4.0pt}
\setlength{\floatsep}{40pt plus 8.0pt minus 4.0pt}
\setlength{\intextsep}{40pt plus 8.0pt minus 4.0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

In tamuthesis.tex
% fix spacing in bibliography, if any...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\oldbibitem\bibitem
\renewcommand{\bibitem}{\setlength{\itemsep}{0pt}\oldbibitem}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

In lists.tex
% single-space sections in Table of Contents
\renewcommand{\cftsecafterpnum}{\vskip0.5\baselineskip}
\renewcommand{\cftsubsecafterpnum}{\vskip0.5\baselineskip}
\renewcommand{\cftsubsubsecafterpnum}{\vskip0.5\baselineskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

On titlepage.tex, changed "Department Head" to "Head of Department". 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Other fixes...

Changed the spacing from 4em to 3em in the titlepage.tex to accomodate 3 line titles.  
This will hopefully prevent the copyright statement from being moved to a new page.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Fix provided by Pradeep

problem regarding the search feature on pdf file that was generated by pdflatex. 

Certain group of letters( like "fi" in my case, i used them to search for figures) are not being 
recognized as text in pdf that got generated by pdflatex.

I added the line "\usepackage[T1]{fontenc}\usepackage{lmodern}" in the preamble and the issue got resolved for me.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%  This hopefully fixes the problem with vertical spacing of section headings at the top of the page..  I went
% with bwtaylor89's solution.  This one may require individual testing since I don't have a copy to debug for all occurances.  :-)

\preto\section{%
\ifnum\value{section}>0\addtocontents{toc}{\vskip-6pt}\fi
}
\preto\subsection{%
\ifnum\value{subsection}=0\addtocontents{toc}{\vskip-6pt}\fi
\ifnum\value{subsection}>0\addtocontents{toc}{\vskip-6pt}\fi
} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Removed some unnecessary \usepackage statements that were interfering with sidewaystable. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


