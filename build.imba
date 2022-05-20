let { execSync } = require 'child_process'
let { writeFileSync } = require 'fs'
let header = '#! /usr/bin/env node'
let body = execSync 'imbac -p ffmproxy.imba'
let content = "{header}\n\n{body}"
writeFileSync 'ffmproxy', content
