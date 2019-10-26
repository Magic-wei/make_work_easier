# work_with_grace
Find the ways to enjoy working!

## Topics

- [scripts](./scripts): some useful scripts used on Ubuntu 16.04 LTS, including software installers and tools.
- [Useful Apps & Tools & Cheatsheets](#useful-apps--tools--cheatsheets): see below.

## Useful Apps & Tools & Cheatsheets

   * [Useful Apps & Tools & Cheatsheets](#useful-apps--tools--cheatsheets)
      * [Apps](#apps)
         * [Basic Apps](#basic-apps)
         * [Markdown Apps Suit](#markdown-apps-suit)
            * [Editors](#editors)
            * [Sildeshow](#sildeshow)
      * [Cheatsheets](#cheatsheets)
         * [Markdown](#markdown)
      * [Lovely Tools](#lovely-tools)
         * [Handwriting Recognition](#handwriting-recognition)
         * [Mathematics](#mathematics)
         * [Diagrams and Flowcharts](#diagrams-and-flowcharts)
         * [Choose colors](#choose-colors)
         * [Others](#others)

## Apps

### Basic Apps

- **Browser**: Chrome (trick -> download deb file and use `sudo dpkg -i google-chrome-stable_current_amd64.deb && sudo apt-get -f install` to install for updating lastest version)

- **Office**: 

  - [WPS](https://www.wps.cn/) (for MS WORD-like documents, **cross-platform**)
  - [texlive](https://tug.org/texlive/acquire-netinstall.html) and [tex studio](https://texstudio.org/) (for LaTex documents)
  - [Typora](https://typora.io/) and [marp](https://yhatt.github.io/marp/) (for markdown documents, **cross-platform**, see [Markdown Apps Suit](#markdown-apps-suit) for more markdown apps)

- **PDF reader**: 

  - [Okular](https://okular.kde.org/) (**cross-platform**, use `sudo apt-get install okular` for installation on Linux, or follow the [guide](./docs/how_to_install_okular_on_windows.md) for installation on Windows)
  - [Adobe Acrobat Reader DC](https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html?ef_id=CjwKCAjw3c_tBRA4EiwAICs8CqfJwkZQVEh0JHEn58n2Z_L3HQC8Y6SiXZ_32RRFHm0oWd_Euk2PQxoCjAAQAvD_BwE:G:s&s_kwcid=AL!3085!3!384071942576!b!!g!!%2Badobe %2Bacrobat %2Breader&gclid=CjwKCAjw3c_tBRA4EiwAICs8CqfJwkZQVEh0JHEn58n2Z_L3HQC8Y6SiXZ_32RRFHm0oWd_Euk2PQxoCjAAQAvD_BwE) (only for Windows or Mac OS)

- **Screenshot and recording**: 
- [kazam](https://launchpad.net/kazam)
  - [obs studio](https://obsproject.com/zh-cn) ([install tutorial](https://obsproject.com/wiki/install-instructions#linux))
  
- **Programming IDE**: 

  - [CLion](https://www.jetbrains.com/clion/) (for C++, **free for student accounts**)
  - [Pycharm](https://www.jetbrains.com/pycharm/) (for Python, **free for student accounts**, you can also use [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/) for to manage these tools with ease)
  - Jupyter notebook
  - Sublime Text

- **Image processing**: 

  - [inkscape](https://inkscape.org/) (pro vector graphics editor, **cross-platform**)
  - [GIMP](https://www.gimp.org/) (image editor, **cross-platform**)

- **Video Editor**: 

  - [OpenShot](https://www.openshot.org/) (open source, **free, cross-platform**)

- **Others**: 

  - [KeePassXC](https://keepassxc.org/) (password management, **cross-platform**)

  - [FreeFileSync](https://freefilesync.org/) (file synchronization, **cross-platform**)

### Markdown Apps Suit

#### Editors

* [Typora](https://typora.io/#): Typora will give you a seamless experience as both a reader and a writer. It removes the preview window, mode switcher, syntax symbols of markdown source code, and all other unnecessary distractions. Replace them with a real live preview feature to help you concentrate on the content itself.
* [StackEdit](https://stackedit.io/): An **in-browser** markdown editor which supports different Markdown flavors such as Markdown Extra, GFM and CommonMark. It also supports LaTeX mathematical expressions, UML diagrams, emojis and even musical scores.

#### Sildeshow

* [marp](https://yhatt.github.io/marp/): Cross-platform markdown presentation writer which supports rendering emoji, math, and background image. You can write your slides in markdown and export as pdf files. See more features on the homepage.
* [gitpitch](https://github.com/gitpitch/gitpitch): The Markdown Presentation Service For Everyone on GitHub, GitLab, Bitbucket, GitBucket, Gitea, and Gogs. Here is [a tutorial in 60 sec](https://github.com/gitpitch/in-60-seconds). See how fast it is to make your own online sildes.

## Cheatsheets

- [MATLAB–Python–Julia cheatsheet](https://cheatsheets.quantecon.org/)

### Markdown

- [John’s Syntax Documentation](https://daringfireball.net/projects/markdown/syntax): Introduction to markdown syntax.
- [markdown-cheatsheet for Github README.md](https://github.com/tchapi/markdown-cheatsheet): Syntax used in github README files commonly.
- [emoji-list at Github](https://github.com/caiyongji/emoji-list) or [github emoji 表情列表](https://www.webpagefx.com/tools/emoji-cheat-sheet/): Emojis are very useful.
- [Common Latex syntax (中文)](http://www.mohu.org/info/symbols/symbols.htm): Commonly used latex syntax. A pretty good dictionary.
- [Markdown常用符号及排版](https://blog.csdn.net/u013914471/article/details/82973812#%E8%B7%B3%E8%BD%AC): Good reference for markdown documentations.

## Lovely Tools

### Handwriting Recognition

* [MyScript](https://webdemo.myscript.com/): Write your math calculations or equations, text and even diagrams, and get instant recognition results. See homepage in [en](https://developer.myscript.com/) or [cn](https://www.myscript.com/zh-hans) for more details.

### Mathematics
* [LaTex live editor](https://www.codecogs.com/latex/eqneditor.php): Generate Latex math equations online.
* [mathjax-live-editor](https://kerzol.github.io/markdown-mathjax/editor.html): Work with mathematical formulae online.
* [SymPy Gamma](https://www.sympygamma.com/input/?i=integrate%281+%2F+%281+%2B+x%5E2%29%29): Symbolic calculation using SymPy.
* [SymPy Live](https://live.sympy.org/): SymPy running on the Google App Engine and can be used online.
* [Matrix Calculus](http://www.matrixcalculus.org/): An online tool that computes vector and matrix derivatives (matrix calculus).
* [Desmos](https://www.desmos.com/calculator): A free online graphing calculator.

### Diagrams and Flowcharts
* [draw.io](https://about.draw.io/): It is a free online diagram software for making flowcharts, process diagrams, org charts, UML, ER and network diagrams. You can use draw.io with your favourite cloud sharing service (e.g. Google Drive and OneDrive) or on your own device to synchronize your work.
* [Lucidchart](https://www.lucidchart.com/): another professional online flowcharts software. It can be used  for free under certain restrictions with limited space.
* [mermaid-live-editor](https://mermaidjs.github.io/mermaid-live-editor) for flowcharts and diagrams

### Choose colors
There are some tools for guidance in choosing color schemes, which makes your plots more beautiful.

* [ColorBrewer2](http://colorbrewer2.org/)
* [Adobe Color](https://color.adobe.com/zh/create/image/)

### Others

* [Ubuntu pastebin](https://paste.ubuntu.com/): This site is intended for use as a short-term exchange of pasted information with others. All submitted data is considered public information.
* [PasteMe](https://pasteme.cn/): Another Ubuntu pastebin-like website with more friendly features. You can set passwords and whether to self-destruct after reading.
* [TimeBie](http://www.timebie.com/index.php): Time converters among different time zones.




