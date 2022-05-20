# USER CONFIG

let extensions = [
	".mp4"
	".mov"
	".avi"
	".mkv"
]

let proxy_folder = "/BL_proxy"

let perc = 25
let frac = 4

# END USER CONFIG

let p = console.log
import { mkdirSync, accessSync, readdirSync } from 'fs'
import { extname, join } from 'path'
import { spawnSync } from 'child_process'

let paths = []
if process.argv.length >= 3
	filenames = process.argv.slice(2)
	for filename in filenames
		try
			accessSync filename
			paths.push filename
		catch
			p "\x1b[31mFile doesn't exist, quitting:\x1b[0m '{filename}'"
			process.exit!
else
	for filename in readdirSync(".")
		if extensions.includes extname(filename).trim!.toLowerCase!
			paths.push filename

for inpath, index in paths
	p "Creating proxy \x1b[32m{index + 1}/{paths.length}\x1b[0m: {inpath}"

	outdir = join proxy_folder, inpath
	mkdirSync outdir, { recursive: yes }
	outpath = join outdir, "proxy_{perc}.avi"

	let cmd = 'ffmpeg'
	let args = [
		"-y"
		"-loglevel"
		"error"
		"-stats"
		"-noautorotate"
		"-i"
		inpath
		"-pix_fmt"
		"yuv420p"
		"-g"
		"1"
		"-sn"
		"-an"
		"-vf"
		"colormatrix=bt601:bt709,scale=iw/{frac}:ih/{frac}:force_divisible_by=2"
		"-c:v"
		"libx264"
		"-crf"
		"16"
		"-preset"
		"superfast"
		"-tune"
		"fastdecode"
		outpath
	]

	spawnSync cmd, args, { stdio: 'inherit' }
