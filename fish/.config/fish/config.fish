# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

function fish_prompt
	set last_status $status
	set_color $fish_color_cwd
	if test $UNDER_JHBUILD
		printf '(jhbuild) '
	end
	printf '%s' (prompt_pwd)
	set_color normal
	printf '%s ' (__fish_git_prompt)
	set_color normal
end

# Add this to your .bashrc, .zshrc or equivalent.
# Run 'fff' with 'f' or whatever you decide to name the function.
function f
	fff $argv
	cd (cat $HOME/.cache/fff/.fff_d)
end
