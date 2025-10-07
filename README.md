在 LaTeX 中，自己编写的宏包（`.sty` 文件）或类文件（`.cls` 文件）的存放位置，主要取决于你的使用场景（个人使用、多人共享或系统级安装）和 TeX 发行版（如 TeX Live、MiKTeX 等）。以下是推荐的存放方式：


### 1. 个人专用（推荐）
如果你仅需自己使用这些宏包，且不想影响系统级配置，建议放在**用户级别的 TeX 目录**中。这样既方便管理，又不会因系统更新丢失文件。

不同操作系统的用户级目录路径如下：
- **Windows（TeX Live/MiKTeX）**：  
  `C:\Users\你的用户名\texmf\tex\latex\`  
  （如果没有 `texmf` 目录，手动创建，后续目录结构保持与系统一致）

- **macOS（TeX Live）**：  
  `~/Library/texmf/tex/latex/`  
  （`~` 代表用户主目录，即 `/Users/你的用户名/`）

- **Linux（TeX Live）**：  
  `~/texmf/tex/latex/`  


### 2. 多人共享或系统级安装
如果需要让同一台电脑的所有用户使用这些宏包，可放在**系统级 TeX 目录**（通常需要管理员权限）：
- **TeX Live**：  
  系统级目录通常为 `texmf-local/tex/latex/`，具体路径因安装位置而异：  
  - Windows：`C:\texlive\年份\texmf-local\tex\latex\`  
  - macOS/Linux：`/usr/local/texlive/年份/texmf-local/tex/latex/`  

- **MiKTeX**：  
  系统级目录可通过 MiKTeX Console 查看（「设置」→「Directories」→「Root directories」），通常为 `C:\ProgramData\MiKTeX\年份\tex\latex\`。


### 3. 临时使用（不推荐长期管理）
如果仅在某个项目中临时使用，可直接将 `.sty` 文件放在**当前编译的 `.tex` 文件所在目录**。这种方式适合临时测试，但不利于宏包的统一管理。


### 关键注意事项：
- **目录结构规范**：  
  无论放在用户级还是系统级目录，都需要遵循 LaTeX 的目录结构：`tex/latex/` 下可创建自定义子目录（如 `my packages`），将宏包放在子目录中（例如 `tex/latex/my packages/mymacro.sty`）。这样 LaTeX 的文件搜索机制才能正确识别。

- **更新文件名数据库**：  
  新添加宏包后，需要更新 TeX 的文件名数据库（让系统知道新文件存在）：  
  - TeX Live：在终端运行 `mktexlsr` 或 `texhash` 命令。  
  - MiKTeX：打开 MiKTeX Console，在「Tasks」中选择「Refresh file name database」。


通过以上方式存放，你可以在 `.tex` 文件中直接用 `\usepackage{mymacro}` 调用自己的宏包，无需指定路径。