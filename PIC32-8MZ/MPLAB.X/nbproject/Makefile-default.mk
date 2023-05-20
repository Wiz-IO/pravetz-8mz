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
SOURCEFILES_QUOTED_IF_SPACED=../src/board/board.c ../src/board/lcd.c ../src/board/sdcard.c ../src/board/time.c ../src/board/uart.c ../src/common/fonts/glcdfont.c ../src/common/ring/array-utils.c ../src/common/ring/ring-buffer.c ../src/emulator/bios.c ../src/emulator/map.c ../src/emulator/map_82.c ../src/emulator/map_8A.c ../src/emulator/map_8M.c ../src/emulator/map_audio.c ../src/emulator/map_disk.c ../src/emulator/map_kbd.c ../src/emulator/map_video.c ../src/emulator/mos.c ../src/fuses.c ../src/main.c ../mplab/fatfs/ff.c ../mplab/fatfs/ffsystem.c ../mplab/fatfs/ffunicode.c ../mplab/SYS_Cache/sys_devcon_pic32mz.c ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1537666708/board.o ${OBJECTDIR}/_ext/1537666708/lcd.o ${OBJECTDIR}/_ext/1537666708/sdcard.o ${OBJECTDIR}/_ext/1537666708/time.o ${OBJECTDIR}/_ext/1537666708/uart.o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ${OBJECTDIR}/_ext/1573040602/array-utils.o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ${OBJECTDIR}/_ext/1217805007/bios.o ${OBJECTDIR}/_ext/1217805007/map.o ${OBJECTDIR}/_ext/1217805007/map_82.o ${OBJECTDIR}/_ext/1217805007/map_8A.o ${OBJECTDIR}/_ext/1217805007/map_8M.o ${OBJECTDIR}/_ext/1217805007/map_audio.o ${OBJECTDIR}/_ext/1217805007/map_disk.o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ${OBJECTDIR}/_ext/1217805007/map_video.o ${OBJECTDIR}/_ext/1217805007/mos.o ${OBJECTDIR}/_ext/1360937237/fuses.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1613309294/ff.o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1537666708/board.o.d ${OBJECTDIR}/_ext/1537666708/lcd.o.d ${OBJECTDIR}/_ext/1537666708/sdcard.o.d ${OBJECTDIR}/_ext/1537666708/time.o.d ${OBJECTDIR}/_ext/1537666708/uart.o.d ${OBJECTDIR}/_ext/1508715418/glcdfont.o.d ${OBJECTDIR}/_ext/1573040602/array-utils.o.d ${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d ${OBJECTDIR}/_ext/1217805007/bios.o.d ${OBJECTDIR}/_ext/1217805007/map.o.d ${OBJECTDIR}/_ext/1217805007/map_82.o.d ${OBJECTDIR}/_ext/1217805007/map_8A.o.d ${OBJECTDIR}/_ext/1217805007/map_8M.o.d ${OBJECTDIR}/_ext/1217805007/map_audio.o.d ${OBJECTDIR}/_ext/1217805007/map_disk.o.d ${OBJECTDIR}/_ext/1217805007/map_kbd.o.d ${OBJECTDIR}/_ext/1217805007/map_video.o.d ${OBJECTDIR}/_ext/1217805007/mos.o.d ${OBJECTDIR}/_ext/1360937237/fuses.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1613309294/ff.o.d ${OBJECTDIR}/_ext/1613309294/ffsystem.o.d ${OBJECTDIR}/_ext/1613309294/ffunicode.o.d ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1537666708/board.o ${OBJECTDIR}/_ext/1537666708/lcd.o ${OBJECTDIR}/_ext/1537666708/sdcard.o ${OBJECTDIR}/_ext/1537666708/time.o ${OBJECTDIR}/_ext/1537666708/uart.o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ${OBJECTDIR}/_ext/1573040602/array-utils.o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ${OBJECTDIR}/_ext/1217805007/bios.o ${OBJECTDIR}/_ext/1217805007/map.o ${OBJECTDIR}/_ext/1217805007/map_82.o ${OBJECTDIR}/_ext/1217805007/map_8A.o ${OBJECTDIR}/_ext/1217805007/map_8M.o ${OBJECTDIR}/_ext/1217805007/map_audio.o ${OBJECTDIR}/_ext/1217805007/map_disk.o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ${OBJECTDIR}/_ext/1217805007/map_video.o ${OBJECTDIR}/_ext/1217805007/mos.o ${OBJECTDIR}/_ext/1360937237/fuses.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1613309294/ff.o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1397801412/sys_devcon_cache_pic32mz.o

# Source Files
SOURCEFILES=../src/board/board.c ../src/board/lcd.c ../src/board/sdcard.c ../src/board/time.c ../src/board/uart.c ../src/common/fonts/glcdfont.c ../src/common/ring/array-utils.c ../src/common/ring/ring-buffer.c ../src/emulator/bios.c ../src/emulator/map.c ../src/emulator/map_82.c ../src/emulator/map_8A.c ../src/emulator/map_8M.c ../src/emulator/map_audio.c ../src/emulator/map_disk.c ../src/emulator/map_kbd.c ../src/emulator/map_video.c ../src/emulator/mos.c ../src/fuses.c ../src/main.c ../mplab/fatfs/ff.c ../mplab/fatfs/ffsystem.c ../mplab/fatfs/ffunicode.c ../mplab/SYS_Cache/sys_devcon_pic32mz.c ../mplab/SYS_Cache/sys_devcon_cache_pic32mz.S



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
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/default/8d34e35a525e991720ba1e596a11cf81d1529812 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/lcd.o: ../src/board/lcd.c  .generated_files/flags/default/bfac595ed3b2d432996edfc2e429f5466a1d64b3 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/lcd.o.d" -o ${OBJECTDIR}/_ext/1537666708/lcd.o ../src/board/lcd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/sdcard.o: ../src/board/sdcard.c  .generated_files/flags/default/e224a872129aa9f3e8d2ab835bee1bc979f6fd73 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/sdcard.o.d" -o ${OBJECTDIR}/_ext/1537666708/sdcard.o ../src/board/sdcard.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/time.o: ../src/board/time.c  .generated_files/flags/default/836f025813c0fb0127889653679d02450f139e59 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/time.o.d" -o ${OBJECTDIR}/_ext/1537666708/time.o ../src/board/time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/uart.o: ../src/board/uart.c  .generated_files/flags/default/4f152023354bd66905975a71109eae1b72a053ca .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/uart.o.d" -o ${OBJECTDIR}/_ext/1537666708/uart.o ../src/board/uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508715418/glcdfont.o: ../src/common/fonts/glcdfont.c  .generated_files/flags/default/90fd8b8106e0bccf8cedbe2844662cc3324b2512 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1508715418" 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1508715418/glcdfont.o.d" -o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ../src/common/fonts/glcdfont.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/array-utils.o: ../src/common/ring/array-utils.c  .generated_files/flags/default/93fe81b599d11ab59b72a8587a7809e25f3baa37 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/array-utils.o.d" -o ${OBJECTDIR}/_ext/1573040602/array-utils.o ../src/common/ring/array-utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/ring-buffer.o: ../src/common/ring/ring-buffer.c  .generated_files/flags/default/7a53e3cf9fcee93991c04ff7f7af21ca94698939 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d" -o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ../src/common/ring/ring-buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/bios.o: ../src/emulator/bios.c  .generated_files/flags/default/1ab9d008c95f0c15e7f59deb74be4caa56f64fa4 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/bios.o.d" -o ${OBJECTDIR}/_ext/1217805007/bios.o ../src/emulator/bios.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map.o: ../src/emulator/map.c  .generated_files/flags/default/e281b3ce4b03bc4b7cc87911200eb739bf4def92 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map.o.d" -o ${OBJECTDIR}/_ext/1217805007/map.o ../src/emulator/map.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_82.o: ../src/emulator/map_82.c  .generated_files/flags/default/7ba8c3860f974fd674fcd78f8753a925171bc115 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_82.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_82.o ../src/emulator/map_82.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8A.o: ../src/emulator/map_8A.c  .generated_files/flags/default/1e57f6cd395fd7e1a10ac743d3d559d0874dcd66 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8A.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8A.o ../src/emulator/map_8A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8M.o: ../src/emulator/map_8M.c  .generated_files/flags/default/5e40b5b33ecc38c5a50aaf615689c44c01122c29 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8M.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8M.o ../src/emulator/map_8M.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_audio.o: ../src/emulator/map_audio.c  .generated_files/flags/default/e42082c42097636c07b07fd657d47f30f5fec117 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_audio.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_audio.o ../src/emulator/map_audio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_disk.o: ../src/emulator/map_disk.c  .generated_files/flags/default/d692e82fd8569f6b91959241fd2475493884d1a3 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_disk.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_disk.o ../src/emulator/map_disk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_kbd.o: ../src/emulator/map_kbd.c  .generated_files/flags/default/db1138b4823ce1492ccc28b7f6a093a84bd9aa7f .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_kbd.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ../src/emulator/map_kbd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_video.o: ../src/emulator/map_video.c  .generated_files/flags/default/279765e37a2178125e80027a3cf4515047a3b3d3 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_video.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_video.o ../src/emulator/map_video.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/mos.o: ../src/emulator/mos.c  .generated_files/flags/default/6dcebd0b1fcec15bf6361406e541c8caf768fb8e .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/mos.o.d" -o ${OBJECTDIR}/_ext/1217805007/mos.o ../src/emulator/mos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fuses.o: ../src/fuses.c  .generated_files/flags/default/2e8c3829d8287ba8c010f2f253597ad7dbe76eda .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fuses.o.d" -o ${OBJECTDIR}/_ext/1360937237/fuses.o ../src/fuses.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/a341502e7a56aebac68a0daad0059559bb928c1b .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ff.o: ../mplab/fatfs/ff.c  .generated_files/flags/default/5c0e84116e604686f5e22d98e7d37519d2ff77c9 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ff.o.d" -o ${OBJECTDIR}/_ext/1613309294/ff.o ../mplab/fatfs/ff.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffsystem.o: ../mplab/fatfs/ffsystem.c  .generated_files/flags/default/959e7af1022b9aec696395c7ede0da5127b35ff2 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffsystem.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ../mplab/fatfs/ffsystem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffunicode.o: ../mplab/fatfs/ffunicode.c  .generated_files/flags/default/3d62117b5f6b344f5c8749210fd9c378eba1d191 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ../mplab/fatfs/ffunicode.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o: ../mplab/SYS_Cache/sys_devcon_pic32mz.c  .generated_files/flags/default/372c69f3c3329b91b685704186fdc8f75ec32a20 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1397801412" 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ../mplab/SYS_Cache/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/default/dd31dbe8e52f6e2c258b5fcf41930060b5aca15 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/lcd.o: ../src/board/lcd.c  .generated_files/flags/default/f8f557b5c6c189af289ef07ba0248a5bbbf32459 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/lcd.o.d" -o ${OBJECTDIR}/_ext/1537666708/lcd.o ../src/board/lcd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/sdcard.o: ../src/board/sdcard.c  .generated_files/flags/default/944840cbd705b6599b1b9aa7da21f9b0f06ff6f3 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/sdcard.o.d" -o ${OBJECTDIR}/_ext/1537666708/sdcard.o ../src/board/sdcard.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/time.o: ../src/board/time.c  .generated_files/flags/default/4ed58af11867defb5ae8e1bf44cb20f2eeadc8c7 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/time.o.d" -o ${OBJECTDIR}/_ext/1537666708/time.o ../src/board/time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/uart.o: ../src/board/uart.c  .generated_files/flags/default/ad7a1324496ef3853367cec3cf733a9be74f373f .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/uart.o.d" -o ${OBJECTDIR}/_ext/1537666708/uart.o ../src/board/uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508715418/glcdfont.o: ../src/common/fonts/glcdfont.c  .generated_files/flags/default/59ed3de637ace21f6d1645462bb9b5daf888a6fd .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1508715418" 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508715418/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1508715418/glcdfont.o.d" -o ${OBJECTDIR}/_ext/1508715418/glcdfont.o ../src/common/fonts/glcdfont.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/array-utils.o: ../src/common/ring/array-utils.c  .generated_files/flags/default/5cfb3cabfe489d900cf69254bdbff6e1581dc8ce .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/array-utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/array-utils.o.d" -o ${OBJECTDIR}/_ext/1573040602/array-utils.o ../src/common/ring/array-utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573040602/ring-buffer.o: ../src/common/ring/ring-buffer.c  .generated_files/flags/default/31b0a8baf009037ff77a765301744b3ccd4b0b23 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1573040602" 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573040602/ring-buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1573040602/ring-buffer.o.d" -o ${OBJECTDIR}/_ext/1573040602/ring-buffer.o ../src/common/ring/ring-buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/bios.o: ../src/emulator/bios.c  .generated_files/flags/default/61589974b5e3626e1ed4f454ef72b5babad8ef4d .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/bios.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/bios.o.d" -o ${OBJECTDIR}/_ext/1217805007/bios.o ../src/emulator/bios.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map.o: ../src/emulator/map.c  .generated_files/flags/default/4d8d22a4fc35b92b00aa7e454522307ae730b6d .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map.o.d" -o ${OBJECTDIR}/_ext/1217805007/map.o ../src/emulator/map.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_82.o: ../src/emulator/map_82.c  .generated_files/flags/default/4654935143012710583498365066506771e67b97 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_82.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_82.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_82.o ../src/emulator/map_82.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8A.o: ../src/emulator/map_8A.c  .generated_files/flags/default/c59074892c7df73006fe04b615dc7ebdd135c191 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8A.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8A.o ../src/emulator/map_8A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_8M.o: ../src/emulator/map_8M.c  .generated_files/flags/default/a4a2aa7bc0c864e6a03ec6b02f1bae2813f5b973 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_8M.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_8M.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_8M.o ../src/emulator/map_8M.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_audio.o: ../src/emulator/map_audio.c  .generated_files/flags/default/62eefaab3f07df54b188a040a0e541fd1e4afe0c .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_audio.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_audio.o ../src/emulator/map_audio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_disk.o: ../src/emulator/map_disk.c  .generated_files/flags/default/fcb77838d258472c20d7eb1c4c22d424952c3c92 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_disk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_disk.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_disk.o ../src/emulator/map_disk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_kbd.o: ../src/emulator/map_kbd.c  .generated_files/flags/default/cb35f707253e6aa3c2b26c4a4215f863feb14ba2 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_kbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_kbd.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_kbd.o ../src/emulator/map_kbd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/map_video.o: ../src/emulator/map_video.c  .generated_files/flags/default/ce5b0e7b6fb83b4561ba7b823207a8eb61db2cfb .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/map_video.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/map_video.o.d" -o ${OBJECTDIR}/_ext/1217805007/map_video.o ../src/emulator/map_video.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1217805007/mos.o: ../src/emulator/mos.c  .generated_files/flags/default/dc22b59de48c7ea769ee5d6b3534f1796e029e3 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1217805007" 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1217805007/mos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1217805007/mos.o.d" -o ${OBJECTDIR}/_ext/1217805007/mos.o ../src/emulator/mos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fuses.o: ../src/fuses.c  .generated_files/flags/default/db45a807bac9252408efb11386601b2a64affd2e .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fuses.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fuses.o.d" -o ${OBJECTDIR}/_ext/1360937237/fuses.o ../src/fuses.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/ff935430bfc0af9cd0bdd2bfdb327fa17715e0d6 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ff.o: ../mplab/fatfs/ff.c  .generated_files/flags/default/98338dedee23121255a3b7e0909f1c6b08a766db .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ff.o.d" -o ${OBJECTDIR}/_ext/1613309294/ff.o ../mplab/fatfs/ff.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffsystem.o: ../mplab/fatfs/ffsystem.c  .generated_files/flags/default/5b5bb972addd3e5fc316b82e494aa0e2165dfc4d .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffsystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffsystem.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffsystem.o ../mplab/fatfs/ffsystem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1613309294/ffunicode.o: ../mplab/fatfs/ffunicode.c  .generated_files/flags/default/a572f02fc1270c406c19e96b107ee5e9d8894686 .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1613309294" 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613309294/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1613309294/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1613309294/ffunicode.o ../mplab/fatfs/ffunicode.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o: ../mplab/SYS_Cache/sys_devcon_pic32mz.c  .generated_files/flags/default/857885012ada21c595cb54d8a1983a61495a7d9c .generated_files/flags/default/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1397801412" 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../include" -I"../src" -I"../mplab/fatfs" -I"../mplab/SYS_Cache" -MP -MMD -MF "${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1397801412/sys_devcon_pic32mz.o ../mplab/SYS_Cache/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
