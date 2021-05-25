# Compiling and generate object file.
include build_support/Makefile-var.mk



INC_PATH_FLAG = -I "utility" -I "driver" -I "./"

OBJ_FILES = ${LINUX_DEBUG_FILE_DIR}/serial_drv_linux.o \
${LINUX_DEBUG_FILE_DIR}/file_handling_support.o \
${LINUX_DEBUG_FILE_DIR}/utility_support.o \
${LINUX_DEBUG_FILE_DIR}/queue.o \
${LINUX_DEBUG_FILE_DIR}/main.o






# Main Target linking
otc.$(EXE_TYPE_SUFFIX): $(OBJ_FILES) build_support/Makefile-build-linux.mk
	@echo -e "\e[1;34m Linking Together.....! \e[0m"
	$(CC) -Wl,-Map="${LINUX_DEBUG_FILE_DIR}/$@.map" -o $@ $(OBJ_FILES)

#Compiling Individual objects
${LINUX_DEBUG_FILE_DIR}/main.o:	main.c
	@echo -e "\e[1;31m Compiling $< \e[0m"
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c main.c

${LINUX_DEBUG_FILE_DIR}/serial_drv_linux.o: driver/serial_drv_linux.c
	@echo -e "\e[1;31m Compiling $< \e[0m"
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<


${LINUX_DEBUG_FILE_DIR}/utility_support.o: utility/utility_support.c
	@echo -e "\e[1;31m Compiling $< \e[0m"
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<


${LINUX_DEBUG_FILE_DIR}/file_handling_support.o: utility/file_handling_support.c
	@echo -e "\e[1;31m Compiling $< \e[0m"
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<		

${LINUX_DEBUG_FILE_DIR}/queue.o: utility/queue.c
	@echo -e "\e[1;31m Compiling $< \e[0m"
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<



