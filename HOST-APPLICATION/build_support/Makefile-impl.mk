
include build_support/Makefile-var.mk

# ----------- Build -------------------------------- #
.build-impl:
ifeq ($(OS),Linux)
	@echo "Building for linux....!"
	make $(EXTRA_MAKE_FLAGS) -f build_support/Makefile-build-linux.mk 
endif

ifeq ($(OS),Windows)
	@echo Building for Windows....!
# not able to clen dir files in windows so create here
	md $(WINDOWS_DEBUG_FILE_DIR)
	make $(EXTRA_MAKE_FLAGS) -f build_support/Makefile-build-windows.mk
endif




# ----------- clean -------------------------------- #
.clean-impl:
ifeq ($(OS),Linux)
	@echo "Cleaning....!"
	$(REMOVE) $(REMOVE_FLAG) $(LINUX_DEBUG_FILE_DIR)/*.o $(LINUX_DEBUG_FILE_DIR)/*.map ./*.out 
endif

ifeq ($(OS),Windows)
	@echo Windows Cleaning exe....!
	$(REMOVE_FILE) $(REMOVE_FILE_FLAG) "*.exe"
	@echo Windows Cleaning debug files....!
# not able to clen dir files in windows so delete here whole debug directory
	$(REMOVE_FOLDER) $(REMOVE_FOLDER_FLAG) $(WINDOWS_DEBUG_FILE_DIR)
#$(REMOVE) $(REMOVE_FLAG) $(WINDOWS_DEBUG_FILE_DIR)/*.o
#$(REMOVE) $(REMOVE_FLAG) $(WINDOWS_DEBUG_FILE_DIR)/*.map
	 
endif