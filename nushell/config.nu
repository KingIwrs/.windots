# config.nu
#
# Installed by:
# version = "0.106.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R


def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != "" and $cwd != $env.PWD {
		cd $cwd
	}
	rm -fp $tmp
}

$env.config.cursor_shape = {
    vi_insert: line
    vi_normal: block
}

def prompt [] {
    let cwd = ($env.PWD)
    let in_git_repo = (do { git rev-parse --abbrev-ref HEAD } | complete | get stdout | is-not-empty)

    let prompt_end = $cwd + $"\n(ansi cyan)(whoami) "

    let prompt = if ($in_git_repo) {
        $"(ansi green)\u{e0a0} (ansi red)" + (git branch --show-current) + $" (ansi green)" + $prompt_end
    } else {
        $prompt_end
    }

    $prompt
}

$env.PROMPT_COMMAND = {prompt}
$env.PROMPT_INDICATOR_VI_INSERT = $"(ansi reset)> "
$env.PROMPT_INDICATOR_VI_NORMAL = $"(ansi reset)| "
$env.PROMPT_COMMAND_RIGHT = ""
