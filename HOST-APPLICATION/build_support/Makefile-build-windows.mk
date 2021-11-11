# Compiling and generate object file.
# for buuild support variables
include build_support/Makefile-var.mk



INC_PATH_FLAG = -I "./" -I "utility" -I "driver"

OBJ_FILES = ${WINDOWS_DEBUG_FILE_DIR}/serial_drv_windows.o \
${WINDOWS_DEBUG_FILE_DIR}/file_handling_support.o \
${WINDOWS_DEBUG_FILE_DIR}/utility_support.o \
${WINDOWS_DEBUG_FILE_DIR}/queue.o \
${WINDOWS_DEBUG_FILE_DIR}/time_drv_windows.o \
${WINDOWS_DEBUG_FILE_DIR}/can_driver.o \
${WINDOWS_DEBUG_FILE_DIR}/main.o






# Main Target linking
otc.$(EXE_TYPE_SUFFIX): $(OBJ_FILES) build_support/Makefile-build-windows.mk
	@echo "Linking Together.....!"
	$(CC) -Wl,-Map="${WINDOWS_DEBUG_FILE_DIR}/$@.map" -o $@ $(OBJ_FILES)

#Compiling Individual objects

${WINDOWS_DEBUG_FILE_DIR}/main.o:	main.c
	@echo "Compiling:  $< "
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c main.c

###################    Driver related recipies #################
${WINDOWS_DEBUG_FILE_DIR}/serial_drv_windows.o: driver/serial_drv_windows.c
	@echo "Compiling:  $< "
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<

${WINDOWS_DEBUG_FILE_DIR}/time_drv_windows.o: driver/time_drv_windows.c
	@echo "Compiling:  $< "
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<

${WINDOWS_DEBUG_FILE_DIR}/can_driver.o: driver/can_driver.c
	@echo "Compiling:  $< "
	$(CC) -D WINDOWS $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<

###################    Utility related recipies #################
${WINDOWS_DEBUG_FILE_DIR}/utility_support.o: utility/utility_support.c
	@echo "Compiling:  $< "
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<


${WINDOWS_DEBUG_FILE_DIR}/file_handling_support.o: utility/file_handling_support.c
	@echo "Compiling:  $< "
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<		

${WINDOWS_DEBUG_FILE_DIR}/queue.o: utility/queue.c
	@echo "Compiling:  $< "
	$(CC) $(DEBUG_FLAGS) $(INC_PATH_FLAG) -o $@ -c $<



