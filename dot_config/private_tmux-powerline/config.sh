# Kevin's configuration file for tmux-powerline.
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }
#
# Disable shell autoformatting (for me, <Space>tf)

# General {
	# Show which segment fails and its exit code.
	export TMUX_POWERLINE_DEBUG_MODE_ENABLED="false"
	# Create error log in tmux runtime temp dir.
	export TMUX_POWERLINE_ERROR_LOGS_ENABLED="false"
	# Only log specific scopes. Space separated list of scopes. Supported scopes: weather.sh lib/text_roll.sh lib/powerline.sh lib/colors.sh config/helpers.sh
	export TMUX_POWERLINE_ERROR_LOGS_SCOPES=""
	# Use patched font symbols.
	export TMUX_POWERLINE_PATCHED_FONT_IN_USE="true"

	# The theme to use.
	export TMUX_POWERLINE_THEME="my-theme"
	# Overlay directory to look for themes. There you can put your own themes outside the repo. Fallback will still be the "themes" directory in the repo.
	export TMUX_POWERLINE_DIR_USER_THEMES="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/themes"
	# Overlay directory to look for segments. There you can put your own segments outside the repo. Fallback will still be the "segments" directory in the repo.
	export TMUX_POWERLINE_DIR_USER_SEGMENTS="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/segments"

	# The initial visibility of the status bar. Can be {"on", "off", "2"}. 2 will create two status lines: one for the window list and one with status bar segments.
	export TMUX_POWERLINE_STATUS_VISIBILITY="2"
	# In case of visibility = 2, where to display window status and where left/right status bars.
	# 0: window status top, left/right status bottom; 1: window status bottom, left/right status top
	export TMUX_POWERLINE_WINDOW_STATUS_LINE=1
	# The status bar refresh interval in seconds.
	# Note that events that force-refresh the status bar (such as window renaming) will ignore this.
	export TMUX_POWERLINE_STATUS_INTERVAL="1"
	# The location of the window list. Can be {"absolute-centre, centre, left, right"}.
	# Note that "absolute-centre" is only supported on `tmux -V` >= 3.2.
	export TMUX_POWERLINE_STATUS_JUSTIFICATION="absolute-centre"

	# The maximum length of the left status bar.
	export TMUX_POWERLINE_STATUS_LEFT_LENGTH="200"
	# The maximum length of the right status bar.
	export TMUX_POWERLINE_STATUS_RIGHT_LENGTH="100"

	# The separator to use between windows on the status bar.
	export TMUX_POWERLINE_WINDOW_STATUS_SEPARATOR=""

	# Uncomment these if you want to enable tmux bindings for muting (hiding) one of the status bars.
	# E.g. this example binding would mute the left status bar when pressing <prefix> followed by Ctrl-[
	#export TMUX_POWERLINE_MUTE_LEFT_KEYBINDING="C-["
	#export TMUX_POWERLINE_MUTE_RIGHT_KEYBINDING="C-]"
# }

# battery.sh {
	# How to display battery remaining. Can be {percentage, cute, hearts}.
	#export TMUX_POWERLINE_SEG_BATTERY_TYPE="percentage"
	# How may hearts to show if cute indicators are used.
	#export TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS="5"
# }

# claude_code.sh {
	# Path to Claude Code's OAuth credentials file (access token is read from here).
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_CREDENTIALS_FILE="/home/kevin/.claude/.credentials.json"
	# How often (seconds) to refresh the session/weekly limits.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_UPDATE_INTERVAL="300"
	# Show the 5-hour "session" utilization bar.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SHOW_SESSION="yes"
	# Show the 7-day "weekly" utilization bar.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SHOW_WEEKLY="yes"
	# Time-remaining indicators: session window (h:mm), weekly window (d/h), payment cycle (d/h).
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SHOW_SESSION_TIME="no"
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SHOW_WEEKLY_TIME="no"
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SHOW_CYCLE_TIME="no"
	# Leading symbol, separator between windows, and the tighter joiner that binds a
	# window's percentage to its own time-left (e.g. "10% 3:48").
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SYMBOL="󰚩"
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SEPARATOR=" | "
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_TIME_JOINER=" "
	# Prefixes for the time indicators (cycle gets a marker since it stands alone).
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SESSION_TIME_SYMBOL=""
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_WEEKLY_TIME_SYMBOL=""
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_CYCLE_TIME_SYMBOL="↻"
	# Show accumulated cost via ccusage (https://github.com/ryoppippi/ccusage).
	# This requires ccusage to be installed; it is a notional API-equivalent cost.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_SHOW_COST="no"
	# Which cost(s) to show: alltime | period | both. Note "alltime" is bounded by
	# the transcripts still on disk: Claude Code prunes them after cleanupPeriodDays
	# (default 30), so it means "since the oldest retained transcript".
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_COST_MODE="alltime"
	# Day-of-month the payment period starts: a number 1-28, or "auto" to derive the
	# Max renewal day from the subscription billing anchor via the API. "auto" sees
	# only the original signup date, not later plan changes — set the day explicitly
	# if you upgraded/downgraded mid-cycle.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_COST_PERIOD_START_DAY="auto"
	# Day used when COST_PERIOD_START_DAY="auto" but the API is unreachable.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_COST_PERIOD_START_FALLBACK_DAY="1"
	# How often (seconds) to recompute the cost (ccusage is heavier than the API call).
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_COST_UPDATE_INTERVAL="3600"
	# The ccusage command (pin it for reproducibility if you like). The "claude
	# daily" subcommand is appended automatically, so give only the base command
	# (without "claude"/"daily" yourself) -- only Claude Code sessions are counted.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_CCUSAGE_CMD="ccusage"
	# Run ccusage offline (bundled prices, no network).
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_CCUSAGE_OFFLINE="yes"
	# printf format for each cost dollar figure.
	# export TMUX_POWERLINE_SEG_CLAUDE_CODE_COST_FORMAT="$%.2f"
# }

# cpu_temp.sh {
	# CPU temperature icon
	export TMUX_POWERLINE_SEG_CPU_TEMP_ICON=" "
	# Linux only. Regexp to indicate a line containing CPU temperature in 'sensors' output.
	# Check the output of 'sensors' program, decide which line contains desired CPU temperature
	# and store an unique part of that line in this variable. It will be used by 'grep' program
	# to distinct the 'CPU temperature' line from the rest output lines.
	export TMUX_POWERLINE_SEG_CPU_TEMP_SENSORS_LINE_MARKER="Package id 0\|Physical id 0\|temp1"
# }

# date.sh {
	# date(1) format for the date. If you don't, for some reason, like ISO 8601 format you might want to have "%D" or "%m/%d/%Y".
	export TMUX_POWERLINE_SEG_DATE_FORMAT="%F"
# }

# hostname.sh {
	# Use short, long or custom format for the hostname. Can be {"short", "long", "custom"}.
	export TMUX_POWERLINE_SEG_HOSTNAME_FORMAT="short"
	# Custom name to be used when format is "custom"
	# export TMUX_POWERLINE_SEG_HOSTNAME_CUSTOM=""
# }


# mode_indicator.sh {
	# Whether the normal & prefix mode section should be enabled. Should be {"true, "false"}.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_AND_PREFIX_MODE_ENABLED="true"
	# Normal mode text & color overrides. Defaults to "normal" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT="normal"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT_COLOR=""
	# Prefix mode text & color overrides. Defaults to "prefix" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT="prefix"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT_COLOR=""
	# Whether the mouse mode section should be enabled. Should be {"true, "false"}.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_ENABLED="true"
	# Mouse mode text & color overrides. Defaults to "mouse" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT="mouse"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT_COLOR=""
	# Whether the copy mode section should be enabled. Should be {"true, "false"}.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_ENABLED="true"
	# Copy mode text & color overrides. Defaults to "copy" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT="copy"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT_COLOR=""
	# Suspend mode text & color overrides. Defaults to "SUSPEND" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT="SUSPEND"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT_COLOR=""
	# Separator text override. Defaults to " • ".
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_SEPARATOR_TEXT=" • "
# }

# pwd.sh {
	# Maximum length of output.
	export TMUX_POWERLINE_SEG_PWD_MAX_LEN="120"
# }

# time.sh {
	# date(1) format for the time. Americans might want to have "%I:%M %p".
	export TMUX_POWERLINE_SEG_TIME_FORMAT="%H:%M"
	# Change this to display a different timezone than the system default.
	# Use TZ Identifier like "America/Los_Angeles"
	# export TMUX_POWERLINE_SEG_TIME_TZ=""
# }

# tmux_session_info.sh {
	# Session info format to feed into the command: tmux display-message -p
	# For example, if FORMAT is '[ #S ]', the command is: tmux display-message -p '[ #S ]'
	#export TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT="#S:#I.#P"
    # S: session_name
    # W: window_name
    # I: window_index
    # P: pane_index
	export TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT="#{session_name}:#{window_name}"
# }

# utc_time.sh {
	# date(1) format for the UTC time.
	export TMUX_POWERLINE_SEG_UTC_TIME_FORMAT="%H:%M %Z"
# }

# vcs_branch.sh {
	# Max length of the branch name.
	export TMUX_POWERLINE_SEG_VCS_BRANCH_MAX_LEN="40"
	# Symbol when branch length exceeds max length
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_TRUNCATE_SYMBOL="…"
	# Default branch symbol
	export TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL=""
	# Branch symbol for git repositories
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_GIT_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
	# Branch symbol for hg/mercurial repositories
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_HG_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
	# Branch symbol for SVN repositories
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_SVN_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
	# Branch symbol colour for git repositories
	export TMUX_POWERLINE_SEG_VCS_BRANCH_GIT_SYMBOL_COLOUR="5"
	# Branch symbol colour for hg/mercurial repositories
	export TMUX_POWERLINE_SEG_VCS_BRANCH_HG_SYMBOL_COLOUR="45"
	# Branch symbol colour for SVN repositories
	export TMUX_POWERLINE_SEG_VCS_BRANCH_SVN_SYMBOL_COLOUR="220"
# }

# vcs_compare.sh {
	# Symbol if local branch is behind.
	# export TMUX_POWERLINE_SEG_VCS_COMPARE_AHEAD_SYMBOL="↑ "
	# Symbol colour if local branch is ahead. Defaults to "current segment foreground colour"
	# export TMUX_POWERLINE_SEG_VCS_COMPARE_AHEAD_SYMBOL_COLOUR=""
	# Symbol if local branch is ahead.
	# export TMUX_POWERLINE_SEG_VCS_COMPARE_BEHIND_SYMBOL="↓ "
	# Symbol colour if local branch is behind. Defaults to "current segment foreground colour"
	# export TMUX_POWERLINE_SEG_VCS_COMPARE_BEHIND_SYMBOL_COLOUR=""
# }

# vcs_modified.sh {
	# Symbol for count of modified vcs files.
	# export TMUX_POWERLINE_SEG_VCS_MODIFIED_SYMBOL="± "
# }

# vcs_others.sh {
	# Symbol for count of untracked vcs files.
	# export TMUX_POWERLINE_SEG_VCS_OTHERS_SYMBOL="⋯"
# }

# vcs_rootpath.sh {
	# Display mode for vcs_rootpath.
	# Example: (name: folder name only; path: full path, w/o expansion; user_path: full path, w/ tilde expansion)
	# export TMUX_POWERLINE_SEG_VCS_ROOTPATH_MODE="name"
# }

# vcs_staged.sh {
	# Symbol for count of staged vcs files.
	# export TMUX_POWERLINE_SEG_VCS_STAGED_SYMBOL="⊕ "
# }

# xkb_layout.sh {
	# Keyboard icon
	export TMUX_POWERLINE_SEG_XKB_LAYOUT_ICON="⌨ "
# }
