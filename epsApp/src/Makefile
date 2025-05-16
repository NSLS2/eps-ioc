TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = eps
# eps.dbd will be created and installed
DBD += eps.dbd

# eps.dbd will be made up from these files:
eps_DBD += base.dbd

# Include dbd files from all support applications:
eps_DBD += system.dbd
eps_DBD += ether_ip.dbd
eps_DBD += devIocStats.dbd
eps_DBD += asSupport.dbd
eps_DBD += caPutLog.dbd
eps_DBD += reccaster.dbd

# Add all the support libraries needed by this IOC
eps_LIBS += ether_ip devIocStats autosave caPutLog reccaster

# eps_registerRecordDeviceDriver.cpp derives from eps.dbd
eps_SRCS += eps_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
eps_SRCS_DEFAULT += epsMain.cpp
eps_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#eps_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
eps_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

