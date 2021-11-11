
############### Build #################
build-l: .build-impl
	@echo -e "\e[40;32m Build Successful! \e[0m"

build-w: .build-impl
	@echo "_________________________________________________________________"
	@echo "			Build Successful !"
	@echo "_________________________________________________________________"


################# Clean ###############
clean-l: .clean-impl
	@echo "Clean Done!"

clean-w: .clean-impl
	@echo "_________________________________________________________________"
	@echo "			Clen Done !"
	@echo "_________________________________________________________________"

# include project build rules makefile
include build_support/Makefile-impl.mk

# include project make variables
include build_support/Makefile-var.mk
