# Compiling and generate object file.
include build_support/Makefile-var.mk



INC_PATH_FLAG = -I "utility" -I "driver" -I "./"

OBJ_FILES = ${LINUX_DEBUG_FILE_DIR}/serial_drv_linux.o ${LINUX_DEBUG_FILE_DIR}/main.o


# Main Target linking
otc.$(EXE_TYPE_SUFFIX): $(OBJ_FILES) build_support/Makefile-build-linux.mk
	$(CC) -Wl,-Map="${LINUX_DEBUG_FILE_DIR}/$@.map" -o $@ $(OBJ_FILES)


#Compiling Individual objects
${LINUX_DEBUG_FILE_DIR}/serial_drv_linux.o: driver/serial_drv_linux.c
	$(CC) $(INC_PATH_FLAG) -o $@ -c driver/serial_drv_linux.c

${LINUX_DEBUG_FILE_DIR}/main.o:	main.c
	$(CC) $(INC_PATH_FLAG) -o $@ -c main.c



