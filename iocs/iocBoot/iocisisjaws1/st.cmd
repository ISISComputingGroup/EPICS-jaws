#!../../bin/windows-x64/isisjaws

## You may have to change isisjaws to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "STOP_ALL_DB" "$(MOTOR)/db/stop_all.db"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/isisjaws1.dbd"
isisjaws1_registerRecordDeviceDriver pdbbase

epicsEnvSet "SETTINGS" "$(ICPCONFIGDIR)/$(ICPCONFIGHOST)/isisjaws1"

< $(SETTINGS)/local.cmd

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
