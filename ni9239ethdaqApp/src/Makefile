TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ni9239ethdaq
# ni9239ethdaq.dbd will be created and installed
DBD += ni9239ethdaq.dbd

# ni9239ethdaq.dbd will be made up from these files:
ni9239ethdaq_DBD += base.dbd

# Include dbd files from all support applications:
ni9239ethdaq_DBD += asyn.dbd
ni9239ethdaq_DBD += calcSupport.dbd
ni9239ethdaq_DBD += stream.dbd
ni9239ethdaq_DBD += drvAsynIPPort.dbd
ni9239ethdaq_DBD += drvVxi11.dbd

# Add all the support libraries needed by this IOC
ni9239ethdaq_LIBS += asyn
ni9239ethdaq_LIBS += calc
ni9239ethdaq_LIBS += stream

# ni9239ethdaq_registerRecordDeviceDriver.cpp derives from ni9239ethdaq.dbd
ni9239ethdaq_SRCS += ni9239ethdaq_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ni9239ethdaq_SRCS_DEFAULT += ni9239ethdaqMain.cpp
ni9239ethdaq_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ni9239ethdaq_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ni9239ethdaq_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

