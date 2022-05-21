# ffmproxy

## What Is This?
This is a script which quickly creates proxies of videos
and stores them in a configured global directory.

A proxy is essentially an easily decoded (mostly uncompressed and lower resolution)
version of a video to increase performance in video editors.

## Requirements
To use this script, you need the following:
- Must have `node` in your PATH.
- Must have `ffmpeg` in your PATH.

You do not need to have imba installed.

## Installation
```
curl "https://github.com/familyfriendlymikey/ffmproxy/releases/latest/download/ffmproxy" \
--create-dirs -o ~/bin/ffmproxy && \
chmod +x ~/bin/ffmproxy
```

## Usage

To create proxies of all videos in the current dir:
```
ffmproxy
```

To create proxies for specific videos:
```
ffmproxy path1 path2 etc
```
