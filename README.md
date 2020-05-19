# make_work_easier
This is a repo that investigates or develops tools to make work easier and enjoyable, especially for research stuffs in the following workflow when we're working on robotics research projects. If you are interested in more useful software tools, see [this list](./software_list.md). If you are searching for some useful scripts in Ubuntu, go to another repo [useful_scripts](https://github.com/Magic-wei/useful_scripts).

**The remainder of this README is all about the research workflow.** For each topic as shown as rectangle in the workflow, you can find some useful tools that I've investigated and I am using most of them in my daily work. You can also find the `Code Snippets` folder in this repo which is a gallery for useful functions in Python, Matlab, C++ etc. If you have no idea about one of these specific topics, hope this repo could be the first place you should take a look at.

<img src="./images/research_workflow.svg" width="90%" alt="research work flow">

## Quick Start

Go to the specific topic you like:

* [make_work_easier](#make_work_easier)
  * [Quick Start](#quick-start)
  * [Software Tools Recommendation](#software-tools-recommendation)
    * [Coding & Documentation](#coding--documentation)
    * [Diagrams & Flowcharts](#diagrams--flowcharts)
    * [Math Tools](#math-tools)
    * [Data Import &amp; Export](#data-import--export)
    * [Figure Plotting](#figure-plotting)
    * [Visualization](#visualization)
    * [Screenshot & Video Recording](#screenshot--video-recording)
    * [Video Editing](#video-editing)
  * [TODO](#todo)

## Software Tools Recommendation

### Coding & Documentation

#### Markdown

Markdown is one of the most popular markup language which is designed to be a simple, lightweight way to add formatting without prior HTML experience. Github itself use Markdown to format its readme files. You can also use Markdown to format your own wiki files. And it supports HTML syntax too.

- [**Typora**](https://typora.io/#): There are many Markdown editors you can find online, among them, Typora could be a special one. Typora will give you a seamless experience as both a reader and a writer. It removes the preview window, mode switcher, syntax symbols of markdown source code, and all other unnecessary distractions. Replace them with a real live preview feature to help you concentrate on the content itself.
- [**StackEdit**](https://stackedit.io/): StackEdit is an in-browser markdown editor which supports different Markdown flavors such as Markdown Extra, GFM and CommonMark. It also supports LaTeX mathematical expressions, UML diagrams, emojis and even musical scores.
- [**Marp**](https://yhatt.github.io/marp/): Marp is a cross-platform markdown presentation writer which supports rendering emoji, math, and background image. You can write your slides in markdown and export as pdf files, which is quite convenient especially when you have already had Markdown files about the topics to share. See more features on the homepage.
- [**MkDocs**](https://www.mkdocs.org/): MkDocs is a fast, simple and downright gorgeous static site generator that's geared towards building project documentation. Documentation source files are written in Markdown, and configured with a single YAML configuration file.
- [**github-markdown-toc**](https://github.com/Magic-wei/github-markdown-toc): A script that easily create Table of Content (TOC) for GitHub README.md, and for any Markdown file.
- [**gollum-wiki-template**](https://github.com/Magic-wei/gollum-wiki-template): This is a lightweight gollum wiki system which will be hosted automatically in your local computer when you start Ubuntu after the installation. You can edit the content in markdown and preview the page from the brower directly whenever you want. Build your own wiki system to accumulate your knowledge everyday. You can also find the latest version in [yuzhangbit/wiki_barebone](https://github.com/yuzhangbit/wiki_barebone).

#### Coding IDE

- [**CLion**](https://www.jetbrains.com/clion/): Clion is probably the best IDE for CMake based c++ projects, which is cross-platform and **free for student accounts** ([Free Educational Licenses Application](https://www.jetbrains.com/community/education/#students)). Clion supports ROS pretty well. You need to launch Clion from the command line to load ROS environment variables.
- [**PyCharm**](https://www.jetbrains.com/pycharm/): PyCharm is a cross-platform IDE for Python, **free for student accounts** ([Free Educational Licenses Application](https://www.jetbrains.com/community/education/#students)). It supports `.ipynb` notebook format. Using Anaconda and PyCharm can offer you excellent experiences when developing Python projects. Also PyCharm supports ROS very well and you need to launch PyCharm from the command line to load ROS environment variables.
- [**JetBrains Toolbox**](https://www.jetbrains.com/toolbox-app/): It is not an IDE but a tool manager for JetBrains apps. With JetBrains Toolbox, you can install and update IDEs automatically to save time and effort maintaining your IDEs.
- [**Sublime Text**](https://www.sublimetext.com/): It is a popular text editor for code, markup and prose which is free and cross-platform (Mac, Windows and Linux). If you are working on a project involving multiple programming and markup languages simultaneously, Sublime Text is probably the best choice to read codes and text and make some small changes. Use [**Sublime Merge**](https://www.sublimemerge.com/) as a Git client along with Sublime Text.
- [**MATLAB Online**](https://www.mathworks.com/products/matlab-online.html): Use MATLAB through your web browser with the latest version, get 5 GB cloud storage in Matlab Drive online, work with your MATLAB files from anywhere, and share them with others. MATLAB Online is available with select licenses, many universities provide campus-wide licenses for their students, double check [here](https://www.mathworks.com/academia/tah-support-program/eligibility.html) with the official name of your university and your official university email address, you will receive an email that tells you if your university has an active MATLAB campus-wide license. 

### Diagrams & Flowcharts

* [**draw.io**](https://www.draw.io/): It is a free online diagram software for making flowcharts, process diagrams, org charts, UML, ER and network diagrams. You can use draw.io with your favourite cloud sharing service (e.g. Google Drive and OneDrive) or on your own device to synchronize your work. **The SVG images in this RAEDME file is drawn with draw.io**.
* [**Lucidchart**](https://www.lucidchart.com/): another professional online flowcharts software. It can be used  for free under certain restrictions with limited space.
* [**mermaid-live-editor**](https://mermaidjs.github.io/mermaid-live-editor) for flowcharts and diagrams in markdown

### Math Tools

* [**Matrix Calculus**](http://www.matrixcalculus.org/): A site that computes vector and matrix derivatives (matrix calculus).
* [**IguanaTex**](http://www.jonathanleroux.org/software/iguanatex/): A free LaTex add-in for Microsoft PowerPoint on Windows. It allows you to insert LaTex equations into your PowerPoint presentation. Free, and open source.
* [**Mathpix**](https://mathpix.com/ocr): Extract LaTeX from PDFs or handwritten notes in seconds just by taking a screenshot, cross-platform (iOS, Android, macOS, Windows, Linux). Free account can support 50 snips/month. [installation guide](https://mathpix.com/docs/snip/linux-overview)
* [**MathType Demo**](http://www.wiris.com/editor/demo/en/developers): This site can be used to convert MathType equations to LaTex or MathML expressions. You can use the GUI on this site to generate your math equations fast.



<img src="./images/math tools.svg" width="90%" alt="math_tools">



### Data Import & Export

Typically data can be stored in file formats like csv, txt, rosbag, xlsx etc. The very first and last steps are importing data from files and exporting data to files. Here are examples for tabular data import and export.

| File Format | Examples                                                     |
| ----------- | ------------------------------------------------------------ |
| csv/txt     | [C++](code_snippets/data_import_and_export/csv_txt/csv_txt_cpp.md) [Python](code_snippets/data_import_and_export/csv_txt/csv_txt_python.md) |
| rosbag      | [Python](code_snippets/data_import_and_export/rosbag/rosbag_python.md) (coming soon) |
| xlsx        | [Python](code_snippets/data_import_and_export/xlsx/xlsx_python.md) (coming soon) |



### Figure Plotting





### Visualization



### Screenshot & Video Recording

* [**Kazam**](https://launchpad.net/kazam) is a lightweight screen recorder software in Ubuntu. 
  * Known issue is, mp4 file generated by Kazam can't be opened correctly in Windows and also on some apps like Slack. For this case, you can use transcoder like [HandBrake](https://handbrake.fr/) which is a cross-platform to convert it to selected format.
* [**OBS Studio**](https://obsproject.com) is a cross platform, free and open source software for video recording and live streaming on Windows, Mac or Linux. You can set up an unlimited number of scenes and sources and switch between scenes seamlessly via custom transitions. Highly recommended for video recording. 
  * Known issue is, for Windows 10 1909 update or newer, it may have black screen issue (**usually for laptop that has more than one GPU**). You can follow the [solution to black screen issue](https://obsproject.com/forum/threads/laptop-black-screen-when-capturing-read-here-first.5965/) to resolve it. Unfortunately, even though you can resolve this issue to capture your whole screen, you might not be able to capture multimedia player windows (you can play multimedia files directly in OBS not capture the player window), but you can capture individual software windows like PyCharm, Matlab, Simulink etc. So it looks good for screen capture and most window captures.  **But it don't have such issue in Ubuntu.**
* [**ScreenToGif**](https://www.screentogif.com/): Screen, webcam and sketchboard recorder with an integrated editor. Free and open source, Over 18 different languages, but **only for Windows**. You can export as Gif, Video or save as a project to edit later.
* [**Snipaste**](https://www.snipaste.com/): Snip + Paste = Snipaste, which is a simple but powerful snipping tool, and also allows you to pin the screenshot back onto the screen. **It's not fair to consider it as only a snipping tool, actually the most powerful feature of it is to pin multiple screenshots onto the screen in groups!** You can convert text or color info in the clipboard into a floating image window. Such windows can be zoomed, rotated, flipped, made translucent, and even made click-through! If you are a programmer, a designer or whoever works much time before the computer, you will be surprised how it can help you get your work done more efficiently! **It has the free version for Windows and Mac OS**, and also a pro version as in-app purchase in Microsoft Store. Even the free version is powerful enough for everyday use. **Linux version is under developing.**

### Video Editing

* [**FFmpeg**](https://www.ffmpeg.org/) is a complete, cross-platform solution to record, convert and stream audio and video. Typically you can use it in command lines or GUI, and many popular video editors are developed based on FFmpeg. Some usage examples are as follows:
  * Transcoding: `ffmpeg -i input.mp4 output.avi`
  * Video clipping: `ffmpeg -i input.mkv -ss 11 -to 15 out.mkv` to get a video clip from 11 second to 15 second. You can also replace `-ss 11 -to 15` with `-ss 00:00:11 -to 00:00:15` or `-ss 00:11 -to 00:15` or `-ss 00:11 -t 5` where parameter `-t` devotes time duration.
  * Video Frame screenshot: `ffmpeg -i input.mkv -ss 5 -vframes 1 img.jpg` to get the 1st frame in the selected second.
  * Watermark: `ffmpeg -i input.mkv -i logo.png -filter_complex
    "[1]scale=192:108[b];[0][b]overlay=20:20" output.mkv` with parameter `scale` for resizing watermark and `overlay` for watermark location (top-left pixel location). Use `-filter_complex "overlay=20:20"` instead if you don't need to scale watermark.
  * Extract audio from video: `ffmpeg -i input.mkv -vn -acodec copy aout.m4a`
  * Remove audio from video: `ffmpeg -i input.mkv -vcodec copy -an vout.mkv`
  * Generate animated GIF: `ffmpeg -i input.mkv -ss 11 -to 15 -s 640x320 -r 15 out.gif` with paramter `-s` for frame scaling and `-r` for frame rate resetting.
  * Use FFplay to play a video or audio: `ffplay input.mkv`, press `Q` key to quit when finished.
* [**OpenShot**](https://www.openshot.org/) is a free & open-source cross-platform video editor. See [official guide](https://www.openshot.org/user-guide/) for more details.

## TODO

See [default project board](https://github.com/Magic-wei/make_work_easier/projects/1) for more details.

## License

This repository licensed under the [MIT License](./LICENSE)