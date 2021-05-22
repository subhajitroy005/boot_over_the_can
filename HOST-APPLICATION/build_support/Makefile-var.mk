# ALL the variables for directory and CC
#
#

CC = gcc
LINUX_DEBUG_FILE_DIR = debug_files/x86_linux_deb




OS = Linux

ifeq ($(OS),Linux)
	EXE_TYPE_SUFFIX = out

# SHELL related var
	REMOVE = rm
	REMOVE_FLAG = -f

endif



#include Variable path
