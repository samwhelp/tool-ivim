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
	util_debug_echo "	* $source_file_path"
	##util_debug_echo "	>> $target_file_path"
}

ivim_apd_conf_file () {
	local source_file_path="$THE_CONF_DIR_PATH/$1"
	local target_file_path="$2"
	cat "$source_file_path" >> "$target_file_path"

	util_debug_echo
	util_debug_echo "	* $source_file_path"
	##util_debug_echo "	>> $target_file_path"
}


ivim_build_pack () {
	local target_file_path="$1"
	#echo "$target_file_path"
	#return



	local pack_name
	local conf_file_path
	local plug_file_name
	local pack_root_dir_path="$THE_PACK_DIR_PATH"
	local pack_dir_path

	util_debug_echo


	cd "$pack_root_dir_path"
	for pack_name in * ; do

		pack_dir_path="$pack_root_dir_path/$pack_name"
		conf_file_path="$pack_dir_path/Conf.vim"
		plug_file_path="$pack_dir_path/Plug.vim"

		cat "$plug_file_path" >> "$target_file_path"
		cat "$conf_file_path" >> "$target_file_path"

		util_debug_echo
		util_debug_echo "	## $pack_name"

		util_debug_echo
		util_debug_echo "	* $conf_file_path"
		util_debug_echo "	* $plug_file_path"
		util_debug_echo

	done

	############################################################################

	echo >> "$target_file_path"
	echo >> "$target_file_path"
	echo '""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""' >> "$target_file_path"
	echo '""" Head: PackPlugBase' >> "$target_file_path"
	echo '""' >> "$target_file_path"
	echo >> "$target_file_path"

	echo 'function! s:PackPlugBase () abort' >> "$target_file_path"
	echo >> "$target_file_path"

	for pack_name in * ; do

		echo '	call s:Plug'"$pack_name"'()' >> "$target_file_path"

	done

	echo >> "$target_file_path"
	echo 'endfunction' >> "$target_file_path"

	echo >> "$target_file_path"
	echo '""' >> "$target_file_path"
	echo '""" Tail: PackPlugBase' >> "$target_file_path"
	echo '""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""' >> "$target_file_path"
	#echo >> "$target_file_path"

	############################################################################

	echo >> "$target_file_path"
	echo >> "$target_file_path"
	echo '""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""' >> "$target_file_path"
	echo '""" Head: PackConfBase' >> "$target_file_path"
	echo '""' >> "$target_file_path"
	echo >> "$target_file_path"

	echo 'function! s:PackConfBase () abort' >> "$target_file_path"
	echo >> "$target_file_path"

	for pack_name in * ; do
		echo '	call s:Conf'"$pack_name"'()' >> "$target_file_path"
	done

	echo >> "$target_file_path"
	echo 'endfunction' >> "$target_file_path"

	echo >> "$target_file_path"
	echo '""' >> "$target_file_path"
	echo '""" Tail: PackConfBase' >> "$target_file_path"
	echo '""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""' >> "$target_file_path"
	# echo >> "$target_file_path"

	############################################################################

	# man cd
	# cd -
	# cd "$OLDPWD" && pwd
	cd "$OLDPWD"

}

ivim_build_all () {
	local file_path="$THE_VIMRC_DIR_PATH/$1"

	# head

	echo
	echo "+Start: $file_path"
	echo > "$file_path"

	# boot
	ivim_apd_boot_file "Start.vim" "$file_path"


	# colorscheme
	ivim_apd_conf_file "ColorSchemePick.vim" "$file_path"
	ivim_apd_conf_file "ColorSchemePlug.vim" "$file_path"


	# plug
	ivim_apd_conf_file "PlugEnhance.vim" "$file_path"


	# pack
	ivim_build_pack "$file_path"

	# config
	ivim_apd_boot_file "ConfigInControl.vim" "$file_path"

	# plugin manager
	ivim_apd_boot_file "PluginInControl.vim" "$file_path"
	ivim_apd_boot_file "PluginManager.vim" "$file_path"

	# main
	ivim_apd_boot_file "ColorSchemeUse.vim" "$file_path"
	ivim_apd_boot_file "Main.vim" "$file_path"

	# tail
	echo >> "$file_path"

	echo
	echo "=Built: $file_path"

}

ivim_build_vimrc () {
	ivim_build_all "boot-plug.vim"
}

##
### Tail: Model
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	echo 'Building...'

	ivim_build_vimrc

	echo
	echo 'Done.'
	echo
}

__main__ "$@"

##
### Tail: Main
################################################################################
