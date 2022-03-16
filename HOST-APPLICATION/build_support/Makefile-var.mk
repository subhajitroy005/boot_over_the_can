# ALL the variables for directory and CC
#
#
EXTRA_MAKE_FLAGS= -s --jobs=4 --output-sync
CC = gcc
LINUX_DEBUG_FILE_DIR = debug_files/x86_linux_deb
WINDOWS_DEBUG_FILE_DIR = debug_files\x86_windows_deb
###### Debug line flag ##############
DEBUG_FLAGS= -Wall
EXTRA_CC_FLAGS= -Wall

##################### OS command   [Windows -> "Windows" || Linux -> "Linux"]################
OS = Windows
#################################################

ifeq ($(OS),Linux)
	EXE_TYPE_SUFFIX = out

# SHELL related var
	REMOVE = rm
	REMOVE_FLAG = -f

endif


ifeq ($(OS),Windows)
	EXE_TYPE_SUFFIX = exe

# SHELL related var
	REMOVE_FILE = del
	REMOVE_FOLDER = rd
	REMOVE_FILE_FLAG = /S
	REMOVE_FOLDER_FLAG = /s /q

endif




#include Variable path
