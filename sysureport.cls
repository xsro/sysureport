% 声明类文件信息
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sysureport}[中大航院作业模板]

% 继承ctexart类
\LoadClass{ctexart}

% 加载必要的宏包
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\RequirePackage{graphicx,float,subfig}
\RequirePackage{amssymb}
% \RequirePackage{mathrsfs} % 注释掉的宏包保持原样
\RequirePackage{amsmath}
\RequirePackage{physics}
\RequirePackage{tikz}
\RequirePackage{cases}
\RequirePackage{bm}
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
\RequirePackage{lipsum}   % 用于生成示例文本，可删除

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
\title{课程大作业}
% 作者信息可在文档中重新定义

\RequirePackage{hyperref}
\RequirePackage{cleveref}

% 处理可能的类选项（此处预留扩展空间）
\ProcessOptions\relax
