#!/bin/bash
# Local Jekyll preview server. Run with: ./serve.sh
export GEM_HOME="$HOME/.gem/ruby/2.6.0"
export PATH="$GEM_HOME/bin:$PATH"
cd "$(dirname "$0")"
jekyll serve --watch --port 4000
