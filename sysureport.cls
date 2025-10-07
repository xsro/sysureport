% 声明类文件信息
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sysucontrol}[中大航院作业模板]

% 继承ctexart类
\LoadClass{ctexart}
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

% 图片
\RequirePackage{graphicx,float,subfig}
\RequirePackage{tikz}

% matlab
\RequirePackage{matlab}

% 颜色定义
\RequirePackage{xcolor}
\definecolor{sysugreen}{cmyk}{1.0,0,1.0,0.6} % 100 0 100 60
\definecolor{sysured}{cmyk}{0.3,1.0,1.0,0.5} % 30 100 100 50
\definecolor{sysublack}{cmyk}{0,0,0,1.0} % 0 0 0 100
\definecolor{sysugreen2}{HTML}{005826}  % 网站颜色
\definecolor{sysugreenl}{HTML}{087236}  % 网站按钮颜色

% 自定义命令
\newcommand\emphr[1]{\textcolor{sysured}{#1}}
\newcommand\emphg[1]{\textcolor{sysugreen}{#1}}

% 背景图片设置
\RequirePackage{wallpaper}
\CenterWallPaper{1.01}{resources/bg.pdf} % 假设背景图片路径固定


% 代码相关设置
\RequirePackage{listings}
\RequirePackage[framed,numbered,autolinebreaks,useliterate]{mcode}

% 标题默认设置
\title{课程大作业（模板）}
% 作者信息可在文档中重新定义

% 新增：标题页和基本信息表格设置
\RequirePackage{array} % 用于表格格式调整

% 定义存储基本信息的命令（更新为需要的字段）
\newcommand{\course}[1]{\gdef\@course{#1}}% 课程
\newcommand{\college}[1]{\gdef\@college{#1}}    % 学院
\newcommand{\major}[1]{\gdef\@major{#1}}        % 专业
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}% 学号
\newcommand{\instructor}[1]{\gdef\@instructor{#1}}% 指导教师


% 设置默认值
\course{现代控制理论（模板）}
\college{航空航天学院}
\major{航空宇航科学与技术}
\studentid{学号}
\instructor{指导教师}



% 自定义标题页
\newcommand{\maketitlepage}{
  \begin{titlepage}
    \thispagestyle{empty} % 标题页不显示页码和页眉页脚
    
    % 垂直居中
    \vspace*{\fill}
    
    % 标题部分（水平居中）
    \begin{center}
      {\zihao{1} \bfseries  \@course \par}
      {\zihao{2} \bfseries \@title \par}
      \vspace{3cm} % 标题与表格之间的距离
      
      % 基本信息表格（居中）
      {\fontsize{16}{16}\selectfont  % 统一表格文字大小为huge
      \begin{tabular}{|m{2.4cm}<{\centering}|m{8cm}<{\centering}|}
        \hline
        \textbf{姓名} & \@author \\ \hline
        \textbf{学院} & \@college \\ \hline
        \textbf{专业} & \@major \\ \hline
        \textbf{学号} & \@studentid \\ \hline
        \textbf{时间} & \@date \\ \hline
        \textbf{指导老师} & \@instructor \\ \hline
      \end{tabular}
      }
    \end{center}
    
    % 垂直居中
    \vspace*{\fill}
  \end{titlepage}
}

% 页眉页脚
\RequirePackage{fancyhdr}
% 全局页眉页脚样式设置
\pagestyle{fancy}
\fancyhf{} % 清除默认页眉页脚设置

% 页脚设置：右侧页码（加粗），左侧研究生信息
\fancyfoot[R]{\bfseries\thepage}
\fancyfoot[L]{\songti{\textcolor{sysugreen}{\textcolor{sysugreen}{\@studentid \@author}}}}
\fancyhead[R]{\songti{\textcolor{sysugreen}{\textcolor{sysugreen}{\@course \\ \@date}}}}

% 取消页眉线和页脚线
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% 章节首页（plain样式）设置，与全局样式保持一致
\fancypagestyle{plain}{
  \fancyhf{} % 清除默认设置
  % 保持与全局页脚一致的样式
  \fancyfoot[R]{\bfseries\thepage}
  \fancyfoot[L]{\songti{\textcolor{sysugreen}{\textcolor{sysugreen}{\@date~~ \@author}}}}
  % 同样取消线条
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

% 数学物理
\RequirePackage{amssymb}
% \RequirePackage{mathrsfs} % 注释掉的宏包保持原样
\RequirePackage{amsmath}
\RequirePackage{physics}

% 中文定理环境
% \indent 为了段前空两格
\newtheorem{theorem}{\indent 定理}[section]
\newtheorem{problem}{\indent 问题}[section]
\newtheorem{lemma}[theorem]{\indent 引理}
\newtheorem{proposition}[theorem]{\indent 命题}
\newtheorem{corollary}[theorem]{\indent 推论}
\newtheorem{definition}{\indent 定义}[section]
\newtheorem{example}{\indent 例}[section]
\newtheorem{remark}{\indent 注}[section]
\newenvironment{solution}{\begin{proof}[\indent\bf 解]}{\end{proof}}
\renewcommand{\proofname}{\indent\bf 证明}

\RequirePackage{hyperref}
\RequirePackage{cleveref}
\crefname{table}{表}{表}
\crefname{figure}{图}{图}
\crefname{section}{节}{节}
\crefname{subsection}{Subsection}{Subsections}




% 处理可能的类选项（此处预留扩展空间）
\ProcessOptions\relax
