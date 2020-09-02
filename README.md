# Slim-OS
Slim-OS is simple docker image build on top of Alpine image with addition of fish shell and nano editor with syntax highlighting. 

**What's the point?** Whenever I need to quickly do something with Docker I usually spin up [BusyBox](https://hub.docker.com/_/busybox), however, from time to time I need something a bit more. For that purpose I like to use Alpine with Fish shell and nano editor with syntax highlighting. 

Includes:
1. [Alpine Edge](https://hub.docker.com/r/dockette/edge)
1. [Fish shell](https://github.com/fish-shell/fish-shell) as the default shell
1. [Nano Editor](https://www.nano-editor.org/)
1. [Nano Syntax Highlighting](https://github.com/scopatz/nanorc/)

For nano explicitly changed setting are:
1. set tabsize 4
1. set linenumbers
1. set softwrap
1. set indicator

I hope someone will find it useful. 