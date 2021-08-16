#!../../bin/linux-x86_64/ni9239ethdaq

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/ni9239ethdaqApp/Db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/ni9239ethdaq.dbd"
ni9239ethdaq_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure ("port", "${IPADDR}:${TCPPORT}")

## Load record instances
dbLoadRecords("${TOP}/db/ni9239acq.db", "P=${P}, R=${R}, PORT=port, ADDR=0, TIMEOUT=1")
dbLoadTemplate("${TOP}/db/ni9239acq.substitutions", "P=${P}, R=${R}, PORT=port, ADDR=0, TIMEOUT=1")

cd "${TOP}/iocBoot/${IOC}"
iocInit
