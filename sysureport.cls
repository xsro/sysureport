% 声明类文件信息
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sysucontrol}[中大航院作业模板]

% 继承ctexart类
\LoadClass{ctexart}
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

% 图片
\RequirePackage{graphicx,float,subfig}
\RequirePackage{tikz}
% 数学物理
\RequirePackage{amssymb}
% \RequirePackage{mathrsfs} % 注释掉的宏包保持原样
\RequirePackage{amsmath}
\RequirePackage{physics}
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
\RequirePackage{fancyhdr} % 用于设置页眉页脚的宏包
% 设置页眉页脚样式
\pagestyle{fancy}
\fancyhf{} % 清除默认的页眉页脚设置

% 设置右上角页眉为指定文字（这里以"示例文字"为例）
\fancyhead[R]{\textcolor{sysugreen}{示例文字}}

% 可选：设置页码位置（例如页脚中央）
\fancyfoot[C]{\thepage}

% 对于章节首页（通常使用plain样式），也需要单独设置
\fancypagestyle{plain}{
  \fancyhf{} % 清除默认设置
  \fancyhead[R]{\textcolor{sysugreen}{示例文字}} % 章节首页右上角同样显示文字
  \fancyfoot[C]{\thepage} % 章节首页页码位置
}

% 页眉页脚设置
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % 清除默认页眉页脚
\fancyfoot[R]{\bfseries\thepage}
\fancyfoot[L]{\songti{\textcolor{sysugreen}{2022 级研究生  \textcolor{gray}{22215363} \href{mailto:xsro@foxmail.com}{\textcolor{gray}{刘成}}}}}
\renewcommand{\headrulewidth}{0pt} % 取消页眉线
\renewcommand{\footrulewidth}{0pt} % 取消页脚线

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
\college{学院}
\major{专业}
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

\RequirePackage{hyperref}
\RequirePackage{cleveref}

% 处理可能的类选项（此处预留扩展空间）
\ProcessOptions\relax
