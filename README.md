# ffmproxy
Creates 25% proxies for all videos in the current directory at configured global directory with ffmpeg.

## Installation
You can put `~/bin` in your `PATH` and place `ffmproxy` in that folder to run this anywhere.

```
mkdir ~/bin && \
cd ~/bin && \
wget "https://raw.githubusercontent.com/familyfriendlymikey/ffmproxy/main/ffmproxy" && \
chmod +x ffmproxy
```

Then, in your `~/.zprofile` or `~/.bash_profile`, write:
```
export PATH="$HOME/bin:$PATH"
```
