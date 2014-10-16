PATH=/usr/local/bin:$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/Applications/RubyMine.app/Contents/MacOS/" # Add RubyMine to path

function title {
    echo -ne "\033]0;"$*"\007"
}

function set_background_color {
  local R=$1
  local G=$2
  local B=$3
  /usr/bin/osascript <<EOF
tell application "iTerm"
  tell the current terminal
    tell the current session
      set background color to {$(($R*65535/255)), $(($G*65535/255)), $(($B*65535/255))}
    end tell
  end tell
end tell
EOF
}

function heroku {

    set_background_color 100 0 0 

    command heroku $@

    set_background_color 0 0 0 
}
