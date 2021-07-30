#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model
##

ivim_cat_boot_file () {
	local file_path="$THE_BOOT_DIR_PATH/$1"
	cat $file_path
}

ivim_cat_conf_file () {
	local file_path="$THE_CONF_DIR_PATH/$1"
	cat $file_path
}

ivim_apd_boot_file () {
	local source_file_path="$THE_BOOT_DIR_PATH/$1"
	local target_file_path="$2"
	cat "$source_file_path" >> "$target_file_path"

	util_debug_echo
	util_debug_echo "      * $source_file_path"
	##util_debug_echo "     >> $target_file_path"
}

ivim_apd_conf_file () {
	local source_file_path="$THE_CONF_DIR_PATH/$1"
	local target_file_path="$2"
	cat "$source_file_path" >> "$target_file_path"

	util_debug_echo
	util_debug_echo "      * $source_file_path"
	##util_debug_echo "     >> $target_file_path"
}


ivim_build_vimrc () {
	local file_path="$THE_VIMRC_DIR_PATH/$1"

	# head

	echo
	echo "+Start: $file_path"
	echo > "$file_path"

	# boot
	ivim_apd_boot_file "Start.vim" "$file_path"


	# conf
	# conf - view
	ivim_apd_conf_file "View/ColorTheme.vim" "$file_path"
	ivim_apd_conf_file "View/VertSplit.vim" "$file_path"
	ivim_apd_conf_file "View/StatusLine.vim" "$file_path"
	ivim_apd_conf_file "View/TabLine.vim" "$file_path"
	ivim_apd_conf_file "View/LineNumber.vim" "$file_path"
	ivim_apd_conf_file "View/LineFormat.vim" "$file_path"
	ivim_apd_conf_file "View/InvisibleChar.vim" "$file_path"
	ivim_apd_conf_file "View/Folding.vim" "$file_path"
	ivim_apd_conf_file "View/Scroll.vim" "$file_path"
	ivim_apd_conf_file "View/Background.vim" "$file_path"


	# conf - base
	ivim_apd_conf_file "Base/Mark.vim" "$file_path"
	ivim_apd_conf_file "Base/Register.vim" "$file_path"
	ivim_apd_conf_file "Base/Buffer.vim" "$file_path"
	ivim_apd_conf_file "Base/Window.vim" "$file_path"
	ivim_apd_conf_file "Base/TabPage.vim" "$file_path"
	ivim_apd_conf_file "Base/Explore.vim" "$file_path"
	ivim_apd_conf_file "Base/Mode.vim" "$file_path"
	ivim_apd_conf_file "Base/Cache.vim" "$file_path"
	ivim_apd_conf_file "Base/Edit.vim" "$file_path"


	# conf - extra
	ivim_apd_conf_file "Extra/Terminal.vim" "$file_path"
	ivim_apd_conf_file "Extra/Clipboard.vim" "$file_path"


	# tail
	echo >> "$file_path"

	echo
	echo "=Built: $file_path"

}

ivim_build_plugin () {
	ivim_build_vimrc "boot-ivim.vim"
}

##
### Tail: Model
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	echo 'Building...'

	ivim_build_plugin

	echo
	echo 'Done.'
	echo
}

__main__ "$@"

##
### Tail: Main
################################################################################
