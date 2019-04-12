

################################################################################
### Head: Base Function
##

## THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

## $ export DEBUG_VIMRC_TOOL=true
is_debug () {
	if [ "$DEBUG_VIMRC_TOOL" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {


	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.")


	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BIN_DIR_NAME"

	THE_EXT_DIR_NAME="ext"
	THE_EXT_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_EXT_DIR_NAME"


	THE_BOOT_DIR_NAME="boot"
	THE_BOOT_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BOOT_DIR_NAME"

	THE_CONF_DIR_NAME="conf"
	THE_CONF_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_CONF_DIR_NAME"



	## THE_VIMRC_DIR_PATH=$(find_dir_path "$THE_PLAN_DIR_PATH/../.")

	THE_VIMRC_DIR_PATH=$(find_dir_path "$THE_PLAN_DIR_PATH/../../core/.")
	## Notice: if the [core dir] not exits , above not run. because init.sh run (set -e).
	##THE_VIMRC_DIR_PATH=$(find_dir_path "$THE_PLAN_DIR_PATH/../../.")"/core"

}


base_var_dump () {

	is_not_debug && return 0

	echo
	echo "################################################################################"
	echo "### Head: var_dump"
	echo "##"
	echo "#"


	echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"


	echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	echo "THE_EXT_DIR_NAME=$THE_EXT_DIR_NAME"
	echo "THE_EXT_DIR_PATH=$THE_EXT_DIR_PATH"


	echo "THE_BOOT_DIR_NAME=$THE_BOOT_DIR_NAME"
	echo "THE_BOOT_DIR_PATH=$THE_BOOT_DIR_PATH"

	echo "THE_CONF_DIR_NAME=$THE_CONF_DIR_NAME"
	echo "THE_CONF_DIR_PATH=$THE_CONF_DIR_PATH"


	echo "THE_VIMRC_DIR_PATH=$THE_VIMRC_DIR_PATH"



	echo "#"
	echo "##"
	echo "### Tail: var_dump"
	echo "################################################################################"
	echo
}

##
### Tail: Base Function
################################################################################
