%%%%% ===== 设置页面

%%%%% ===== 设置数学公式
\numberwithin{equation}{chapter}
\allowdisplaybreaks


%%%%% ===== 设置页眉和页脚
\pagestyle{fancy}
\fancyhf{}  % 清除以前对页眉页脚的设置

\newcommand{\makeheadrule}{%% 定义页眉与正文间双隔线
  \makebox[0pt][l]{\rule[.7\baselineskip]{\headwidth}{0.3pt}}%0.4
  \rule[0.85\baselineskip]{\headwidth}{1.0pt}\vskip-.8\baselineskip}
\makeatletter
\renewcommand{\headrule}{%
  {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi\makeheadrule}}
\makeatother
\renewcommand{\chaptermark}[1]{\markboth{\CTEXthechapter \ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection \ #1}{}}
%\fancyhead[RO,LE]{{\small\songti\rightmark}}     % 节标题
%\fancyhead[RE]{{\small\songti\leftmark}}      % 章标题
\fancyhead[CO,CE]{华东师范大学硕士专业学位论文}
%\fancyhead[RO,LE]{$\cdot$ {\small\thepage} $\cdot$}
\fancyfoot[RO,LE]{{\thepage}}
%\fancyfoot[CO,CE]{{\thepage}}



%%%%% ===== 定理类环境
\theorempostskipamount0em
\theoremstyle{plain}
\theoremheaderfont{\normalfont\heiti\color{blue}}
\theorembodyfont{\normalfont\kaishu\color{black}}
\theoremindent0em
\theoremseparator{\hspace{0.2em}}
\theoremnumbering{arabic}
\newtheorem{theorem}{定理}[chapter]
\newtheorem{lemma}[theorem]{引理}
\newtheorem{corollary}[theorem]{推论}
\newtheorem{proposition}[theorem]{命题}
\newtheorem{property}[theorem]{性质}
\newtheorem{definition}{定义}[chapter]
\newtheorem{remark}{注记}[chapter]
%
%\theoremheaderfont{\normalfont\itshape\color{blue}}
\theorembodyfont{\normalfont\rmfamily\color{black}}
\newtheorem{example}{例}[chapter]

\theoremstyle{nonumberplain}
\theorempreskip{0em}
\theoremsymbol{\ensuremath{\Box}}
\newtheorem{proof}{证明}

%%%%% ===== 算法
\floatname{algorithm}{\color{blue} 伪代码}
\algrenewcommand{\algorithmiccomment}[1]{\quad{\color{red}\%\ #1}}
\numberwithin{algorithm}{chapter}
\renewcommand{\listalgorithmname}{算\ 法\ 目\ 录}


\def\tableautorefname{表}%
\def\figureautorefname{图}%

\def\equationautorefname{式}%
%\def\footnoteautorefname{脚注}%
%\def\itemautorefname{项}%
%\def\figureautorefname{图}%
%\def\tableautorefname{表}%
%\def\partautorefname{篇}%
%\def\appendixautorefname{附录}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小节}%
%\def\subsubsectionautorefname{小小节}%
%\def\paragraphautorefname{段落}%
%\def\subparagraphautorefname{子段落}%
%\def\FancyVerbLineautorefname{行}%
%\def\theoremautorefname{定理}%
\def\algorithmautorefname{伪代码}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ===== 封面 =====
\makeatletter

\newcommand{\mcc}[1]{\multicolumn{1}{c}{\underline{\makebox[10em][c]{#1}}}}
\newcommand{\mce}[1]{\multicolumn{1}{c}{\underline{\makebox[15em][l]{#1}}}}

\def\makecover{
\begin{titlepage}

%%%%% ===== 中文封面
  \pdfbookmark[0]{中文封面}{ccover}
  \linespread{1.1}\zihao{4}\ziju{0.05}
  \noindent{\@graduateyear\,届研究生硕士学位论文}\smallskip
  \par\noindent\hspace*{-12pt}
  \setlength{\tabcolsep}{2pt}
  \begin{tabular}[t]{rl}
    分\hspace{7.5pt}类\hspace{7.5pt}号：
                      &\ \underline{\makebox[6em][l]{\,\@class}}  \\[1.5ex]
    密\hspace{2em}级：&\ \underline{\makebox[6em][l]{\@security}}
  \end{tabular}
  \hfill
  \begin{tabular}[t]{rl}
    学校代码：&\ \underline{\makebox[6em][l]{\,10269}} \\[1.5ex]
    学\hspace{2em}号：&\ \underline{\makebox[6em][l]{\,\@studentid}}
  \end{tabular}

  \vspace{4em}
  \begin{center}
    \raisebox{1ex}[0pt][0pt]{
    \includegraphics[width=0.15\textwidth]{ecnu_logo}}\ \
    \includegraphics[width=0.75\textwidth,height=5em]{ecnu}

    \bigskip
    {\STSong
    % {\songti
      \zihao{-2}\textbf{East China Normal University} \\[0.5ex]
      \zihao{2} 硕士学位论文\\[1ex]
      \zihao{-2} \textbf{MASTER'S  DISSERTATION}

    % title
    \vspace{3em}\noindent
    \parbox[t]{0.25\textwidth}{\zihao{2} 论文题目：}
    \begin{varwidth}[t]{.75\linewidth}\linespread{1.3}\zihao{1}\textbf{\uline{\@ctitle}} \linebreak\end{varwidth}


    \vfill\linespread{1.5}\selectfont\zihao{4}
    \renewcommand{\arraystretch}{1.2}
    \begin{tabular}{p{0cm}p{5.5em}@{\extracolsep{0.5ex}}cc}
     ~ & 院 \hfill 系： & & \mcc{\@caffil } \\
     ~ & 专 \hfill 业： & & \mcc{\@cmajor}\\
     ~ & 研 \hfill 究 \hfill 方 \hfill 向：& & \mcc{\@cdirection}\\
     ~ & 指\hfill 导\hfill 老\hfill 师：& & \mcc{\textbf{\@csupervisor}}\\
     ~ & 学\hfill 位\hfill 申\hfill 请\hfill 人：& & \mcc{\textbf{\@cauthor}}\\
    \end{tabular}
    }

    \vfill\@cdate
  \end{center}

\clearpage % {\pagestyle{empty}\cleardoublepage}
%%%%% ===== 英文封面
  \thispagestyle{empty}
  \pdfbookmark[0]{英文封面}{ecover}
  \noindent Dissertation for master degree in \@graduateyear
  \hfill University Code:\, 10269\par\medskip
  \mbox{}\hfill Student ID:\, \@studentid


  \vspace{5em}
  \begin{center}
    {\zihao{-0} East China Normal University}
    %\scalebox{1.15}[1.6]{\bfseries EAST CHINA NORMAL UNIVERSITY}

    % title
    \vspace{6em}{\bfseries
    \parbox[t]{0.125\textwidth}{\zihao{2} Title：}
    \begin{varwidth}[t]{.75\linewidth}\linespread{1.4}\zihao{2} \uline{\@etitle} \linebreak\end{varwidth}}

    \vfill\linespread{1.5}\selectfont\mdseries

    \renewcommand{\arraystretch}{1.1}
    \scalebox{1}[1.0]{\setlength{\tabcolsep}{0.5ex}
    \begin{tabular}{rl}
     Department: &  \mce{\@eaffil } \\
     Major:      &  \mce{\@emajor}\\
     Research Direction: &  \mce{\@edirection}\\
     Supervisor: &  \mce{\@esupervisor}\\
     Candidate:  & \mce{\@eauthor}\\
    \end{tabular}
    }

    \vfill\@edate
  \end{center}

\end{titlepage}
\makeatother
}



\def\thss@int@infoitema#1{
	\@namedef{#1}##1{\@namedef{@#1}{##1}}
	\define@key{thss@info}{#1}{\@nameuse{#1}{##1}}
}
% eg. `\thss@int@infoitemb{cuniversity}' will expand to:
%   \define@key{thss@info}{cuniversity}{\def\cuniversity{#1}}
\def\thss@int@infoitemb#1{
	\define@key{thss@info}{#1}{\@namedef{#1}{##1}}
}
% Set up document information entries.
\thss@int@infoitema{graduateyear}
\thss@int@infoitema{class}
\thss@int@infoitema{security}
\thss@int@infoitema{ctitle}
\thss@int@infoitema{caffil}
\thss@int@infoitema{cmajor}
\thss@int@infoitema{cdirection}
\thss@int@infoitema{csupervisor}
\thss@int@infoitema{cauthor}
\thss@int@infoitema{studentid}
\thss@int@infoitema{cdate}
\thss@int@infoitema{etitle}
\thss@int@infoitema{eaffil}
\thss@int@infoitema{emajor}
\thss@int@infoitema{edirection}
\thss@int@infoitema{esupervisor}
\thss@int@infoitema{eauthor}
\thss@int@infoitema{edate}

% Set up document information using the `key = value' grammar.
\newcommand*{\studentinfo}[1]{\setkeys{thss@info}{#1}}