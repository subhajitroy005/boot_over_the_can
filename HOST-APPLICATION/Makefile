
############### Build #################
build-l: .build-impl
	@echo -e "\e[40;32m Build Successful! \e[0m"

build-w: .build-impl
	@echo "Build Successful!________________________"


################# Clean ###############
clean-l: .clean-impl
	@echo "Clean Done!"

clean-w: .clean-impl
	@echo "Clean Done!"

# include project build rules makefile
include build_support/Makefile-impl.mk

# include project make variables
include build_support/Makefile-var.mk
