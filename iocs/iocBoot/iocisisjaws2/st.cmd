#!../../bin/windows-x64/isisjaws

## You may have to change isisjaws to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

epicsEnvSet "STOP_ALL_DB" "$(MOTOR)/db/stop_all.db"

## Register all support components
dbLoadDatabase "dbd/isisjaws2.dbd"
isisjaws2_registerRecordDeviceDriver pdbbase

epicsEnvSet "SETTINGS" "$(ICPCONFIGDIR)/$(ICPCONFIGHOST)/isisjaws2"

< $(SETTINGS)/local.cmd

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
