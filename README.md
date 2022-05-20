## Requirements
To use this script, you need the following:
- Must have `node` in your PATH.
- Must have `ffmpeg` in your PATH.

You do not need to have imba installed.

## Installation
```
curl "https://raw.githubusercontent.com/familyfriendlymikey/ffmproxy/main/ffmproxy" \
--create-dirs -o ~/bin/ffmproxy && \
chmod +x ~/bin/ffmproxy
```

## Usage

To create proxies of all videos in the current dir:
```
ffmproxy
```

To create proxies for specific videos
```
ffmproxy path1 path2 etc
```
