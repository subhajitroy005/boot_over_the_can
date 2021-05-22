
include build_support/Makefile-var.mk


.build-impl:
ifeq ($(OS),Linux)
	@echo "Building for linux....!"
	make -f build_support/Makefile-build-linux.mk
endif
	


.clean-impl:
ifeq ($(OS),Linux)
	@echo "Cleaning....!"
	$(REMOVE) $(REMOVE_FLAG) $(LINUX_DEBUG_FILE_DIR)/*.o $(LINUX_DEBUG_FILE_DIR)/*.map ./*.out 
endif
	