# ALL the variables for directory and CC
#
#

CC = gcc
LINUX_DEBUG_FILE_DIR = debug_files/x86_linux_deb
WINDOWS_DEBUG_FILE_DIR = debug_files/x86_windows_deb
###### Debug line flag ##############
DEBUG_FLAGS = 


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
	REMOVE = del
	REMOVE_FLAG = /S

endif




#include Variable path
