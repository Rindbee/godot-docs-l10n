# Godot引擎文档中文翻译维护仓库

本仓库是上游仓库—— [Godot手册国际化的官方仓库](https://github.com/godotengine/godot-docs-l10n)
的一个分支仓库，主要针对 [Godot引擎](https://godotengine.org)项目的
[官方手册](https://docs.godotengine.org)，为其提供简体中文翻译。

本仓库master分支与上游仓库主分支保持一致，而dev分支则通过sphinx工具由
[Godot文档](https://github.com/Rindbee/godot-docs) 仓库，即子模块
[docs](https://github.com/Rindbee/godot-docs) 中仓库的dev分支提取而来。

## 原因

官方推荐贡献翻译的途径是通过 [Hosted Weblate](https://hosted.weblate.org/projects/godot-engine/godot-docs/)，
这是一个不错的途径。但是没法及时预览翻译后的结果，所以很难及时纠正翻译中格式、拼写、以及排版上的错误。

## 使用须知

本仓库以及子模块的master均与上游官方仓库保持一致，dev分支是变更的主要分支。两者均需切换到dev分支。

而本仓库会不定时通过 [Hosted Weblate](https://hosted.weblate.org/projects/godot-engine/godot-docs/)
向上游提交翻译。所以也不会向上游直接拉取请求。

## 编译指南

### 安装依赖

编译构建文档需要以下工具：

- python3
- python3-pip
- subversion

然后使用pip安装

- Sphinx
- sphinx-intl
- sphinx_rtd_theme

获得增量更新。

### 下载源代码

如果你想要自己翻译和/或编译本仓库内容以获得html文档，可以使用git工具clone下载本仓库并切换到dev分支：

```sh
git clone https://github.com/Rindbee/godot-docs-l10n.git
cd godot-docs-l10n/
git fetch origin dev:dev
git checkout dev
git branch --set-upstream-to=origin/dev dev
git pull
```

并在dev分支下载子模块：

```sh
git submodule update --init --recursive
```

然后也切换到dev分支。

### 编译html文件

如果你使用Linux系统，可以直接在仓库根路径下运行：

```sh
make zh
```

Windows系统下，可以尝试使用：

```sh
sphinx-build -D language='zh_CN' -j auto docs build/html
```

编译完成后，将在build/html目录下找到编译的html文件，可以使用web浏览器本地打开。

## 进度 & 计划

### 进度

目前已完成：

- [关于](/sphinx/po/zh_CN/LC_MESSAGES/about)
- [入门](/sphinx/po/zh_CN/LC_MESSAGES/getting_started)
- [开发](/sphinx/po/zh_CN/LC_MESSAGES/development)
- [社区](/sphinx/po/zh_CN/LC_MESSAGES/community)

正在翻译：

- [类参考](/sphinx/po/zh_CN/LC_MESSAGES/classes)
  - 内置类型

待完善：

- [教程](/sphinx/po/zh_CN/LC_MESSAGES/tutorials)
- [类参考](/sphinx/po/zh_CN/LC_MESSAGES/classes)

### 计划

[教程](/sphinx/po/zh_CN/LC_MESSAGES/tutorials) 部分翻译顺序会按个人喜好，和
[类参考](/sphinx/po/zh_CN/LC_MESSAGES/classes) 部分则会根据在文档出现的顺序以及其重要性翻译。

## License

All the translation content of this repository (`msgid`, `msgstr`) is
licensed under the Creative Commons Attribution 3.0 Unported license
([CC BY 3.0](https://creativecommons.org/licenses/by/3.0/)) and is to be
attributed to "Juan Linietsky, Ariel Manzur and the Godot community".

See [LICENSE.txt](/LICENSE.txt) for details.

The shell scripts are in the public domain.
