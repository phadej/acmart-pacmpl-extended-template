%% For double-blind review submission, w/o CCS and ACM Reference (max submission space)
\documentclass[acmsmall,review,anonymous]{acmart}\settopmatter{printfolios=true,printccs=false,printacmref=false}
%% For double-blind review submission, w/ CCS and ACM Reference
%\documentclass[acmsmall,review,anonymous]{acmart}\settopmatter{printfolios=true}
%% For single-blind review submission, w/o CCS and ACM Reference (max submission space)
%\documentclass[acmsmall,review]{acmart}\settopmatter{printfolios=true,printccs=false,printacmref=false}
%% For single-blind review submission, w/ CCS and ACM Reference
%\documentclass[acmsmall,review]{acmart}\settopmatter{printfolios=true}
%% For final camera-ready submission, w/ required CCS and ACM Reference
%\documentclass[acmsmall]{acmart}\settopmatter{}

% BEGIN Oleg's additions

% This is Literate Haskell file to be processed with lhs2TeX
%include polycode.fmt

% ftp://ftp.funet.fi/pub/TeX/CTAN/macros/latex/contrib/prftree/prftreedoc.pdf
\usepackage{prftree}
\setlength{\prfinterspace}{1.5em}
\setlength{\prfrulenameskip}{0.3em}
\setlength{\prflinethickness}{.4pt}

% Define new commands to make writing maths easier
\newcommand{\syntaxrule}[3]{\prftree[r]{\rulename{#1}}{#2}{#3}}
\newcommand{\syntaxruleb}[4]{\prftree[r]{\rulename{#1}}{#2}{#3}{#4}}
\newcommand{\typeof}[1]{\ensuremath{\llbracket #1 \rrbracket}}
\newcommand{\rulename}[1]{\;\ensuremath{\textsc{\small #1}}}
\newcommand{\lambdafun}[2]{\lambda #1.\, #2}

% I'm not sure about PACMPL policy on colors? Anyway, macro is easy to change.
% There are colros on acmart defined
\newcommand{\typejudge}[3]{\textcolor{ACMPurple}{#1} \vdash \textcolor{ACMRed}{#2} : \textcolor{ACMDarkBlue}{#3}}

% https://github.com/borisveytsman/acmart/issues/138 seems to be fixed!
\usepackage[capitalize,nameinlink,noabbrev]{cleveref}

% END Oleg's additions

%% Journal information
%% Supplied to authors by publisher for camera-ready submission;
%% use defaults for review submission.
\acmJournal{PACMPL}
\acmVolume{1}
\acmNumber{CONF} % CONF = POPL or ICFP or OOPSLA
\acmArticle{1}
\acmYear{2018}
\acmMonth{1}
\acmDOI{} % \acmDOI{10.1145/nnnnnnn.nnnnnnn}
\startPage{1}

%% Copyright information
%% Supplied to authors (based on authors' rights management selection;
%% see authors.acm.org) by publisher for camera-ready submission;
%% use 'none' for review submission.
\setcopyright{none}
%\setcopyright{acmcopyright}
%\setcopyright{acmlicensed}
%\setcopyright{rightsretained}
%\copyrightyear{2018}           %% If different from \acmYear

%% Bibliography style
\bibliographystyle{ACM-Reference-Format}
%% Citation style
%% Note: author/year citations are required for papers published as an
%% issue of PACMPL.
\citestyle{acmauthoryear}   %% For author/year citations


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Note: Authors migrating a paper from PACMPL format to traditional
%% SIGPLAN proceedings format must update the '\documentclass' and
%% topmatter commands above; see 'acmart-sigplanproc-template.tex'.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Some recommended packages.
\usepackage{booktabs}   %% For formal tables:
                        %% http://ctan.org/pkg/booktabs
\usepackage{subcaption} %% For complex figures with subfigures/subcaptions
                        %% http://ctan.org/pkg/subcaption


\begin{document}

%% Title information
\title[Short Title]{Full Title}         %% [Short Title] is optional;
                                        %% when present, will be used in
                                        %% header instead of Full Title.
\titlenote{with title note}             %% \titlenote is optional;
                                        %% can be repeated if necessary;
                                        %% contents suppressed with 'anonymous'
\subtitle{Subtitle}                     %% \subtitle is optional
\subtitlenote{with subtitle note}       %% \subtitlenote is optional;
                                        %% can be repeated if necessary;
                                        %% contents suppressed with 'anonymous'


%% Author information
%% Contents and number of authors suppressed with 'anonymous'.
%% Each author should be introduced by \author, followed by
%% \authornote (optional), \orcid (optional), \affiliation, and
%% \email.
%% An author may have multiple affiliations and/or emails; repeat the
%% appropriate command.
%% Many elements are not rendered, but should be provided for metadata
%% extraction tools.

%% Author with single affiliation.
\author{First1 Last1}
\authornote{with author1 note}          %% \authornote is optional;
                                        %% can be repeated if necessary
\orcid{nnnn-nnnn-nnnn-nnnn}             %% \orcid is optional
\affiliation{
  \position{Position1}
  \department{Department1}              %% \department is recommended
  \institution{Institution1}            %% \institution is required
  \streetaddress{Street1 Address1}
  \city{City1}
  \state{State1}
  \postcode{Post-Code1}
  \country{Country1}                    %% \country is recommended
}
\email{first1.last1@@inst1.edu}          %% \email is recommended

%% Author with two affiliations and emails.
\author{First2 Last2}
\authornote{with author2 note}          %% \authornote is optional;
                                        %% can be repeated if necessary
\orcid{nnnn-nnnn-nnnn-nnnn}             %% \orcid is optional
\affiliation{
  \position{Position2a}
  \department{Department2a}             %% \department is recommended
  \institution{Institution2a}           %% \institution is required
  \streetaddress{Street2a Address2a}
  \city{City2a}
  \state{State2a}
  \postcode{Post-Code2a}
  \country{Country2a}                   %% \country is recommended
}
\email{first2.last2@@inst2a.com}         %% \email is recommended
\affiliation{
  \position{Position2b}
  \department{Department2b}             %% \department is recommended
  \institution{Institution2b}           %% \institution is required
  \streetaddress{Street3b Address2b}
  \city{City2b}
  \state{State2b}
  \postcode{Post-Code2b}
  \country{Country2b}                   %% \country is recommended
}
\email{first2.last2@@inst2b.org}         %% \email is recommended


%% Abstract
%% Note: \begin{abstract}...\end{abstract} environment must come
%% before \maketitle command
\begin{abstract}
Write this last.
State the problem.
Say why it's an interesting problem.
Say what your solution achieves.
Say what follows from your solution.
\end{abstract}

%% 2012 ACM Computing Classification System (CSS) concepts
%% Generate at 'http://dl.acm.org/ccs/ccs.cfm'.
\begin{CCSXML}
<ccs2012>
<concept>
<concept_id>10011007.10011006.10011008</concept_id>
<concept_desc>Software and its engineering~General programming languages</concept_desc>
<concept_significance>500</concept_significance>
</concept>
<concept>
<concept_id>10003456.10003457.10003521.10003525</concept_id>
<concept_desc>Social and professional topics~History of programming languages</concept_desc>
<concept_significance>300</concept_significance>
</concept>
</ccs2012>
\end{CCSXML}

\ccsdesc[500]{Software and its engineering~General programming languages}
\ccsdesc[300]{Social and professional topics~History of programming languages}
%% End of generated code


%% Keywords
%% comma separated list
\keywords{keyword1, keyword2, keyword3}  %% \keywords are mandatory in final camera-ready submission


%% \maketitle
%% Note: \maketitle command must come after title commands, author
%% commands, abstract environment, Computing Classification System
%% environment and commands, and keywords command.
\maketitle


\section{Introduction}

\emph{One page}\footnote{The page counts are for a denser two-column format. Scale appropriately}.
This is a template for your (mine?, first?) research paper.
The benefits of this template are: 

\begin{itemize}
\item
It has a bulleted list of contributions.
This is the list you have to rewrite first.
It will drive the entire paper.

\item
The repository, this template is in, has a \texttt{Makefile}.
Using \texttt{make} will save your from setting up \emph{the} build system for your paper.
So you can start writing immediately.
You'll need to install \texttt{lhs2tex}%
\footnote{\url{http://hackage.haskell.org/package/lhs2tex}}
though.%
\footnote{The irony is that I setup this template, so I can avoid writing}

\item
We present few examples of \texttt{lhs2tex}, a tool to make your (not only Haskell) code pretty type set.
It can also be (ab)used for typing more than code blocks (\Cref{sec:details}).

\item
The template is prefilled with \emph{Seven simple, actionable suggestions} by \citet{SPJ},
that will make your papers better (\Cref{sec:simons-suggestions}).

\item
We also mentions other seven actionable principles by \citet{DD}.
Again, to make your papers better (\Cref{sec:dereks-principles}).

\end{itemize}

\section{Main ideas}

\emph{2--3 pages.}

\Cref{fig:stlc} looks impressive\ldots
but sends readers to sleep and/or makes them feel stupid.
Explain it as if you were speaking to someone using a whiteboard.
Conveying the intuition is primary, not secondary.
Once your readers have the intuition, they can follow the details (but not vice versa).


\section{The details}
\label{sec:details}

\begin{figure}[h]
\begin{gather*}
  \syntaxrule{Var}
    {\ }
    {\typejudge{x :  A}{x}{A}}
  \\
  \syntaxrule{Weaken}
    {\typejudge{\Gamma}{e}{C}}
    {\typejudge{\Gamma, x : A}{e}{C}}
  \qquad
  \syntaxrule{Contract}
    {\typejudge{\Gamma, x_1 : A, x_2 : A}{e}{C}}
    {\typejudge{\Gamma, x : A}{e}{C}}
  \qquad
  \syntaxrule{Exchange}
    {\typejudge{\Gamma, \Delta}{e}{C}}
    {\typejudge{\Delta, \Gamma}{e}{C}}
  \\
  \syntaxruleb{App}
    {\typejudge{\Gamma}{f}{A \to B}}
    {\typejudge{\Delta}{x}{A}}
    {\typejudge{\Gamma,\Delta}{|f x|}{B}} % you can use lhs2tex in math mode
  \qquad
  \qquad
  \syntaxrule{Abs}
    {\typejudge{\Gamma, x : A}{e}{B}}
    {\typejudge{\Gamma}{|\x -> e|}{A \to B}}
\end{gather*}
\caption{Simply typed lambda calculus with explicit structural rules}
\label{fig:stlc}
\end{figure}

\emph{More sections. 5 pages.} This is where things like \Cref{fig:stlc}  belong.

We use this section to demonstrate \texttt{lhs2tex}. You could use examples to introduce the problem, they are easy to write using \texttt{lhs2tex}.
\begin{code}
zipWith :: (a ->  b -> c) -> [a] -> [b] -> [c]
zipWith k  []         []        = []
zipWith k  (x : xs)   (y : ys)  = k x y : zipWith k xs ys
zipWith k  _          _         = error "lengths don't match"
\end{code}
But even it isn't related, you can (ab)use \texttt{lhs2tex},
to write maths like it was Haskell.
For example we can define a category to consist of following data \citep{awodey-book}
(your paper doesn't need to be about category theory):

\begin{itemize}
\item \emph{Objects}: |A, B, C|
\item \emph{Arrows}: |f, g, h|
\item For each arrow |f| there are given objects: |dom f| and |cod f| called
the \emph{domain} and \emph{codomain} of |f|.
\item \ldots
\end{itemize}
These data are required to satisfy following laws
\begin{itemize}
\item Associativity:
\begin{equation}
 |f . (g . h) = (f . g) . h|
\end{equation}
for all |f : A -> B|, |g : B -> C|, |h : C -> D|.
\item Unit:
\begin{equation}
|f . 1_A = f = 1_B . f|
\end{equation}
for all |f  : A -> B|.
\end{itemize}
For further example, we can present associativity law as a diagram.
The diagram below is made with a \emph{MetaPost}%
\footnote{\url{https://tug.org/metapost.html}}.
You might consider using \texttt{diagrams} package%
\footnote{\url{https://archives.haskell.org/projects.haskell.org/diagrams/}}.
Whatever tool you decide to use, reserve proper time to make your diagrams.
``A picture is worth a thousand words'' holds for information density for production time.
\begin{center}
\includegraphics{figures/arrows}
\end{center}

Next we'll test that \texttt{cleveref} works: \cref{lem:yoneda} and \cref{ex:poptics}.

\begin{lemma}[Yoneda]
\label{lem:yoneda}
Let $\mathbf{C}$ be locally small. For any object $C \in \mathbf{C}$ and functor
$F \in \mathbf{Sets}^{\mathbf{C}^\mathrm{op}}$
there is an isomorphism
\begin{equation*}
Hom(yC, F) \cong F C
\end{equation*}
which, moreover, is natural in both $F$ and $C$.
\begin{proof}
Omitted.
\end{proof}
\end{lemma}

\begin{example}
\label{ex:poptics}
We can use \cref{lem:yoneda} to derive Profunctor Optics \citep{Boisseau2018}.
\end{example}


\section{Related work}

\emph{1--2 pages}. There are various resources.

\begin{itemize}
\item ACM SIGPLAN Author Information \url{http://www.sigplan.org/Resources/Author/} has a short \emph{Writing} section.
\item Simon Peyton Jones has a longer list on \url{https://www.microsoft.com/en-us/research/academic-program/write-great-research-paper/#!other-resources}.
\end{itemize}


\section{Conclusions and further work}

\emph{Half a page}.


%% Acknowledgments
\begin{acks}                            %% acks environment is optional
                                        %% contents suppressed with 'anonymous'
  %% Commands \grantsponsor{<sponsorID>}{<name>}{<url>} and
  %% \grantnum[<url>]{<sponsorID>}{<number>} should be used to
  %% acknowledge financial support and will be used by metadata
  %% extraction tools.
  This material is based upon work supported by the
  \grantsponsor{GS100000001}{National Science
    Foundation}{http://dx.doi.org/10.13039/100000001} under Grant
  No.~\grantnum{GS100000001}{nnnnnnn} and Grant
  No.~\grantnum{GS100000001}{mmmmmmm}.  Any opinions, findings, and
  conclusions or recommendations expressed in this material are those
  of the author and do not necessarily reflect the views of the
  National Science Foundation.
\end{acks}


%% Bibliography
\bibliography{bibliography}


%% Appendix
\appendix

\section{Simon's suggestions}
\label{sec:simons-suggestions}

We used some of \emph{Seven simple, actionable suggestions} by \citet{SPJ},
in this template.
The all suggestions are:

\begin{enumerate}
\item \textbf{Don't wait: write}. Writing papers is a primary mechanism for doing research (not just for reporting it)
\item \textbf{Identify your key idea}. Your goal s to convey a useful, re-usable, clear and sharp idea.
\item \textbf{Tell a story}. Imagine you are explaining at a whiteboard.
\item \textbf{Nail your contributions}. Do not leave the reader to guess what your contributions are!
\item \textbf{Related work: later}. Problems with too early related work:
The reader knows nothing about the problem yet; so your description of various technical tradeoffs is absolutely incomprehensible. 
Describing alternative approaches gets between the reader and your idea
\item \textbf{Put your readers first (examples)}. Introduce the problem, and your idea, using \emph{examples} and only then present the general case.
\item \textbf{Listen to your readers}. Get your paper read by as many friendly guinea pigs as possible
\end{enumerate}

There are various recodings of the presentation on YouTube, for example \url{https://www.youtube.com/watch?v=WP-FkUaOcOM}.

\section{Derek's principles}
\label{sec:dereks-principles}

\citet{DD} gives seven conrete suggestions, which are different from Simon's.

\begin{enumerate}
\item \textbf{Old to new}. Begin sentences with old info. End sentences with new info.
\item \textbf{One paragraph, one point}. A paragraph should have one main point, expressed in a single \emph{point sentence}.
\item \textbf{Name your baby}. Give unique names to things and use them consistently.
\item \textbf{Just in time}. Give information precisely when it is needed, not before
\item \textbf{CGI model for abstract/intro}.
  \emph{Context}: Set the stage, motivate the general topic.
  \emph{Gap}: Explain your specifc problem and why existing work does not adequately solve it.
  \emph{Innovation}: State what you've done that is new, and explain how it helps fill the gap.
\item \textbf{Have a ``main ideas'' section}. Use \emph{concrete illustrative examples} and high-level intuition. Do \emph{not} have to show the general solution.
\item \textbf{Compare with related work at the end}. It goes at the end of the paper. Give real comparisons, not a ``laundry list''! 
\end{enumerate}

There is a recording of the talk on YouTube: \url{https://www.youtube.com/watch?v=PM1Atui30qU}.



\end{document}
