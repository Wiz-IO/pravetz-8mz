#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/board/board.c ../src/board/lcd.c ../src/board/sdcard.c ../src/board/time.c ../src/board/uart.c ../src/common/fonts/glcdfont.c ../src/common/ring/array-utils.c ../src/common/ring/ring-buffer.c ../src/emulator/bios.c ../src/emulator/map.c ../src/emulator/map_82.c ../src/emulator/map_8A.c ../src/emulator/map_8M.c ../src/emulator/map_audio.c ../src/emulator/map_disk.c ../src/emulator/map_kbd.c ../src/emulator/map_video.c ../src/emulator/mos.c ../mplab/fatfs/ff.c ../mplab/fatfs/ffsystem.c ../mplab/fatfs/ffunicode.c ../mplab/SYS_Cache/sys_devcon_pic32mz.c ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S ../src/fuses.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1537666708/board.o ${OBJECTDIR}/_ext/1537666708/lcd.o ${OBJECTDIR}/_ext/1537666708/sdcard.o ${OBJECTDIR}/_ext/1537666708/time.o ${OBJECTDIR}/_ext/1537666708/uart.o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ${OBJECTDIR}/_ext/1573040602/array-utils.o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ${OBJECTDIR}/_ext/1217805007/bios.o ${OBJECTDIR}/_ext/1217805007/map.o ${OBJECTDIR}/_ext/1217805007/map_82.o ${OBJECTDIR}/_ext/1217805007/map_8A.o ${OBJECTDIR}/_ext/1217805007/map_8M.o ${OBJECTDIR}/_ext/1217805007/map_audio.o ${OBJECTDIR}/_ext/1217805007/map_disk.o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ${OBJECTDIR}/_ext/1217805007/map_video.o ${OBJECTDIR}/_ext/1217805007/mos.o ${OBJECTDIR}/_ext/1613309294/ff.o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1360937237/fuses.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1537666708/board.o.d ${OBJECTDIR}/_ext/1537666708/lcd.o.d ${OBJECTDIR}/_ext/1537666708/sdcard.o.d ${OBJECTDIR}/_ext/1537666708/time.o.d ${OBJECTDIR}/_ext/1537666708/uart.o.d ${OBJECTDIR}/_ext/1508715418/glcdfont.o.d ${OBJECTDIR}/_ext/1573040602/array-utils.o.d ${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d ${OBJECTDIR}/_ext/1217805007/bios.o.d ${OBJECTDIR}/_ext/1217805007/map.o.d ${OBJECTDIR}/_ext/1217805007/map_82.o.d ${OBJECTDIR}/_ext/1217805007/map_8A.o.d ${OBJECTDIR}/_ext/1217805007/map_8M.o.d ${OBJECTDIR}/_ext/1217805007/map_audio.o.d ${OBJECTDIR}/_ext/1217805007/map_disk.o.d ${OBJECTDIR}/_ext/1217805007/map_kbd.o.d ${OBJECTDIR}/_ext/1217805007/map_video.o.d ${OBJECTDIR}/_ext/1217805007/mos.o.d ${OBJECTDIR}/_ext/1613309294/ff.o.d ${OBJECTDIR}/_ext/1613309294/ffsystem.o.d ${OBJECTDIR}/_ext/1613309294/ffunicode.o.d ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1360937237/fuses.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1537666708/board.o ${OBJECTDIR}/_ext/1537666708/lcd.o ${OBJECTDIR}/_ext/1537666708/sdcard.o ${OBJECTDIR}/_ext/1537666708/time.o ${OBJECTDIR}/_ext/1537666708/uart.o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ${OBJECTDIR}/_ext/1573040602/array-utils.o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ${OBJECTDIR}/_ext/1217805007/bios.o ${OBJECTDIR}/_ext/1217805007/map.o ${OBJECTDIR}/_ext/1217805007/map_82.o ${OBJECTDIR}/_ext/1217805007/map_8A.o ${OBJECTDIR}/_ext/1217805007/map_8M.o ${OBJECTDIR}/_ext/1217805007/map_audio.o ${OBJECTDIR}/_ext/1217805007/map_disk.o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ${OBJECTDIR}/_ext/1217805007/map_video.o ${OBJECTDIR}/_ext/1217805007/mos.o ${OBJECTDIR}/_ext/1613309294/ff.o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1360937237/fuses.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/board/board.c ../src/board/lcd.c ../src/board/sdcard.c ../src/board/time.c ../src/board/uart.c ../src/common/fonts/glcdfont.c ../src/common/ring/array-utils.c ../src/common/ring/ring-buffer.c ../src/emulator/bios.c ../src/emulator/map.c ../src/emulator/map_82.c ../src/emulator/map_8A.c ../src/emulator/map_8M.c ../src/emulator/map_audio.c ../src/emulator/map_disk.c ../src/emulator/map_kbd.c ../src/emulator/map_video.c ../src/emulator/mos.c ../mplab/fatfs/ff.c ../mplab/fatfs/ffsystem.c ../mplab/fatfs/ffunicode.c ../mplab/SYS_Cache/sys_devcon_pic32mz.c ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S ../src/fuses.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o: ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S  .generated_files/flags/default/4fc7929bf670fed9a410d23521ec835f6448eccc .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1397801412" 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o: ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S  .generated_files/flags/default/97c7b00162db0b700858c9b105f4fdb262f5ce28 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1397801412" 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/default/17f2f46d9b00755a846c8461e3a2f95c08559e9a .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/lcd.o: ../src/board/lcd.c  .generated_files/flags/default/dbffcea2b1893c08c795c513ec7bd05cc9e525ec .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/lcd.o.d" -o ${OBJECTDIR}/_ext/1537666708/lcd.o ../src/board/lcd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/sdcard.o: ../src/board/sdcard.c  .generated_files/flags/default/3fabc14fa768b1de812dc42a13498d0d14e711ee .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/sdcard.o.d" -o ${OBJECTDIR}/_ext/1537666708/sdcard.o ../src/board/sdcard.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/time.o: ../src/board/time.c  .generated_files/flags/default/b4feea9e4cf7b7e742d625e9076175009076847a .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/time.o.d" -o ${OBJECTDIR}/_ext/1537666708/time.o ../src/board/time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/uart.o: ../src/board/uart.c  .generated_files/flags/default/4f5c54c61af9d98c8e10b6f6cd6fae4d42fbf9ee .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/uart.o.d" -o ${OBJECTDIR}/_ext/1537666708/uart.o ../src/board/uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508715418/glcdfont.o: ../src/common/fonts/glcdfont.c  .generated_files/flags/default/b32719914074219c1445cc96373036247f14fab1 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1508715418" 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1508715418/glcdfont.o.d" -o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ../src/common/fonts/glcdfont.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/array-utils.o: ../src/common/ring/array-utils.c  .generated_files/flags/default/f596ed8a2bb8747dc29038bf1334b634ace8e5a9 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/array-utils.o.d" -o ${OBJECTDIR}/_ext/1573040602/array-utils.o ../src/common/ring/array-utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/ring-buffer.o: ../src/common/ring/ring-buffer.c  .generated_files/flags/default/e123f7db87e9ce9d916cb9d9c57da7da389c828b .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d" -o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ../src/common/ring/ring-buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/bios.o: ../src/emulator/bios.c  .generated_files/flags/default/4ef9dcf817abf0320fa796387c32c2bdd3453f9c .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/bios.o.d" -o ${OBJECTDIR}/_ext/1217805007/bios.o ../src/emulator/bios.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map.o: ../src/emulator/map.c  .generated_files/flags/default/728c0557218cd483f521d4b3815c0e33cb8db0eb .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map.o.d" -o ${OBJECTDIR}/_ext/1217805007/map.o ../src/emulator/map.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_82.o: ../src/emulator/map_82.c  .generated_files/flags/default/8f9da26ecad31de9086005fe04eee9370b9a24dc .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_82.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_82.o ../src/emulator/map_82.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8A.o: ../src/emulator/map_8A.c  .generated_files/flags/default/4988059a985b5eadef037e672b5f2a685aa1984b .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8A.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8A.o ../src/emulator/map_8A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8M.o: ../src/emulator/map_8M.c  .generated_files/flags/default/36de35c67a1b71741125bec6c3802adc3008006b .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8M.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8M.o ../src/emulator/map_8M.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_audio.o: ../src/emulator/map_audio.c  .generated_files/flags/default/807ba72c93d7822af81d0cfc2d15753db1c9e5d0 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_audio.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_audio.o ../src/emulator/map_audio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_disk.o: ../src/emulator/map_disk.c  .generated_files/flags/default/e5f026fbb2e50818e2feb011797dd3c8d70a3d7b .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_disk.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_disk.o ../src/emulator/map_disk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_kbd.o: ../src/emulator/map_kbd.c  .generated_files/flags/default/5a666a113bbe9b282e8d7560825207dd0f34f22f .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_kbd.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ../src/emulator/map_kbd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_video.o: ../src/emulator/map_video.c  .generated_files/flags/default/292e1381cbff71652f6c3d9da267d57a5190cb33 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_video.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_video.o ../src/emulator/map_video.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/mos.o: ../src/emulator/mos.c  .generated_files/flags/default/408465512b20386184888c4e5616fe7819f5af3c .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/mos.o.d" -o ${OBJECTDIR}/_ext/1217805007/mos.o ../src/emulator/mos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ff.o: ../mplab/fatfs/ff.c  .generated_files/flags/default/ac8c32b3d1fc3a06953b45513df2731d6c130e9a .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ff.o.d" -o ${OBJECTDIR}/_ext/1613309294/ff.o ../mplab/fatfs/ff.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffsystem.o: ../mplab/fatfs/ffsystem.c  .generated_files/flags/default/fcb94785fc460c1e07e0d6e341a06af411744b7e .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffsystem.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ../mplab/fatfs/ffsystem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffunicode.o: ../mplab/fatfs/ffunicode.c  .generated_files/flags/default/fe1ecbee18fdf49ad11c8a42fde807ca7fbd3b7d .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ../mplab/fatfs/ffunicode.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o: ../mplab/SYS_Cache/sys_devcon_pic32mz.c  .generated_files/flags/default/9dde7d5285d1d631a4f56c7cf817375cdb2db736 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1397801412" 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ../mplab/SYS_Cache/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fuses.o: ../src/fuses.c  .generated_files/flags/default/3af6cba667f0d312b92e939c7df8d5ad740b11d6 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fuses.o.d" -o ${OBJECTDIR}/_ext/1360937237/fuses.o ../src/fuses.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/638ef51eb27a9b0db4be65fd4e206cd6e865f860 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/default/d62d4e5f30b4dacdda5b38933528216712ee2cd8 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/lcd.o: ../src/board/lcd.c  .generated_files/flags/default/35b674305ab64b81084f5295feb1b23e5b5016f5 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/lcd.o.d" -o ${OBJECTDIR}/_ext/1537666708/lcd.o ../src/board/lcd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/sdcard.o: ../src/board/sdcard.c  .generated_files/flags/default/16168315c300adc858f88eda1f1a3f195d36db28 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/sdcard.o.d" -o ${OBJECTDIR}/_ext/1537666708/sdcard.o ../src/board/sdcard.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/time.o: ../src/board/time.c  .generated_files/flags/default/d9fcc8ba5674dedff42cd8124026895e71bba028 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/time.o.d" -o ${OBJECTDIR}/_ext/1537666708/time.o ../src/board/time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/uart.o: ../src/board/uart.c  .generated_files/flags/default/efbac397067156f91b6407b580fef8a70c6d8370 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/uart.o.d" -o ${OBJECTDIR}/_ext/1537666708/uart.o ../src/board/uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508715418/glcdfont.o: ../src/common/fonts/glcdfont.c  .generated_files/flags/default/3711f1cb9f5e51e9b9c77e24911005bb56982032 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1508715418" 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1508715418/glcdfont.o.d" -o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ../src/common/fonts/glcdfont.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/array-utils.o: ../src/common/ring/array-utils.c  .generated_files/flags/default/f8219c30e40497409db0dec9aa47bce51e60911f .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/array-utils.o.d" -o ${OBJECTDIR}/_ext/1573040602/array-utils.o ../src/common/ring/array-utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/ring-buffer.o: ../src/common/ring/ring-buffer.c  .generated_files/flags/default/9a5a21664f3fd0fea2df210d692a683452d743ea .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d" -o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ../src/common/ring/ring-buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/bios.o: ../src/emulator/bios.c  .generated_files/flags/default/5431a03d7187249a4763c8d4560e806bd18184b9 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/bios.o.d" -o ${OBJECTDIR}/_ext/1217805007/bios.o ../src/emulator/bios.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map.o: ../src/emulator/map.c  .generated_files/flags/default/320b97d0f0598424cbb689eb11f2c0df1e2f3b32 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map.o.d" -o ${OBJECTDIR}/_ext/1217805007/map.o ../src/emulator/map.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_82.o: ../src/emulator/map_82.c  .generated_files/flags/default/d53879226952483e3f1753fdc0eb960ede9363dc .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_82.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_82.o ../src/emulator/map_82.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8A.o: ../src/emulator/map_8A.c  .generated_files/flags/default/9e50b9ab4ecc12e3a477befa5ee4f32198704b60 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8A.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8A.o ../src/emulator/map_8A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8M.o: ../src/emulator/map_8M.c  .generated_files/flags/default/3c278dd97665f262bdfa3fbcc761f0faeda2e0f .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8M.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8M.o ../src/emulator/map_8M.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_audio.o: ../src/emulator/map_audio.c  .generated_files/flags/default/25d22187f1505c775793676ed6fb1fb483c8f60e .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_audio.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_audio.o ../src/emulator/map_audio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_disk.o: ../src/emulator/map_disk.c  .generated_files/flags/default/3e3f7e46fcf3a14b6c09dc937e7922dff665eb8 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_disk.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_disk.o ../src/emulator/map_disk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_kbd.o: ../src/emulator/map_kbd.c  .generated_files/flags/default/59653ef47670a8328f9a90d10ca2b39bd84f4f59 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_kbd.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ../src/emulator/map_kbd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_video.o: ../src/emulator/map_video.c  .generated_files/flags/default/4d023e23743362200382668dc4a8f8b696d4f391 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_video.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_video.o ../src/emulator/map_video.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/mos.o: ../src/emulator/mos.c  .generated_files/flags/default/d2f90af17c79d8d78ceea2ff6c8b64ad8b8ccb13 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/mos.o.d" -o ${OBJECTDIR}/_ext/1217805007/mos.o ../src/emulator/mos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ff.o: ../mplab/fatfs/ff.c  .generated_files/flags/default/ce8242674d61c6e481527fbf4c281df0ab3509c9 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ff.o.d" -o ${OBJECTDIR}/_ext/1613309294/ff.o ../mplab/fatfs/ff.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffsystem.o: ../mplab/fatfs/ffsystem.c  .generated_files/flags/default/7659745fbd5160e859b4095b96774d149c320e18 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffsystem.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ../mplab/fatfs/ffsystem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffunicode.o: ../mplab/fatfs/ffunicode.c  .generated_files/flags/default/f54980298b54b7052f6f75add23b55194844493b .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ../mplab/fatfs/ffunicode.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o: ../mplab/SYS_Cache/sys_devcon_pic32mz.c  .generated_files/flags/default/d5a709022831289cdb5f2de5db2aeddb95cb43f4 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1397801412" 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ../mplab/SYS_Cache/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fuses.o: ../src/fuses.c  .generated_files/flags/default/ce2205c6b7e87669cdcb139ef9e5f4c08b4d07c2 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fuses.o.d" -o ${OBJECTDIR}/_ext/1360937237/fuses.o ../src/fuses.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/967646167e9676b4606c8917936f577749d43515 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=32768,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=32768,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
