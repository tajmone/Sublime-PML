=begin "Rakefile" v0.1.0 | 2022/07/24 | by Tristano Ajmone
================================================================================
This is the Rakefile for automating the Sublime PML package documentation.
A few notes of warning:

* Clobbering is global, I haven't found a way to implement namespace clobbering,
  so if you 'Rake clobber' you'll have to 'Rake' in order not to loose tracked
  files. Namespaced clobbering would improve working on specific locales.
* Beware that CDing to a directory is a persistent action affecting all future
  'sh' commands -- always remember to 'cd $repo_root' before issuing shell
  commands from Rake, or manipulating task paths (working dir is affected!).
================================================================================
=end


# Custom helpers borrowed from ALAN-IF repos ...

require './_assets/rake/globals.rb'
require './_assets/rake/asciidoc.rb'

# ==============================================================================
# --------------------{  P R O J E C T   S E T T I N G S  }---------------------
# ==============================================================================

#  For future Rouge PML lexer integration:
  # $rouge_dir = "#{$repo_root}/_assets/rouge"
  # require "#{$rouge_dir}/custom-rouge-adapter.rb"

ADOC_OPTS = <<~HEREDOC
  --failure-level WARN \
  --verbose \
  --timings \
  --safe-mode unsafe \
  -a source-highlighter=rouge \
  -a rouge-style=monokai.sublime \
  -a data-uri
HEREDOC

#  For future Rouge PML lexer integration:

  # --require \"#{$rouge_dir}/custom-rouge-adapter.rb\" \
  # -a docinfodir=\"#{$rouge_dir}\" \
  # -a docinfo@=shared-head \

# ==============================================================================
# -------------------------------{  T A S K S  }--------------------------------
# ==============================================================================

task :default => [:guide]


## Clean & Clobber
##################
require 'rake/clean'
CLOBBER.include('docs/*.html')


## User Guide
#############
desc "Build User Guide"
task :guide

GUIDE_ADOC = 'docs-src/user-guide/index.asciidoc'
GUIDE_HTML = 'docs/index.html'

GUIDE_ADOC_DEPS = FileList[
  GUIDE_ADOC,
  'docs-src/user-guide/*.adoc',
  '_assets/**/*.rb'
]

task :guide => GUIDE_HTML

file GUIDE_HTML => GUIDE_ADOC_DEPS do
  AsciidoctorConvert(GUIDE_ADOC, ADOC_OPTS, 'docs')
end
