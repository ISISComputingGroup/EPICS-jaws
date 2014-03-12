#!../../bin/windows-x64-debug/jawsTest

## You may have to change jawsTest to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/jawsTest.dbd"
jawsTest_registerRecordDeviceDriver pdbbase

# Create simulated motors: ( start card , start axis , low limit, high limit, home posn, # cards, # axes to setup)
motorSimCreate( 0, 0, -32000, 32000, 0, 1, 4 )

# Setup the Asyn layer (portname, low-level driver drvet name, card, number of axes on card)
drvAsynMotorConfigure("motorSim1", "motorSim", 0, 4)

## Load our record instances
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=1,ADDR=0")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=2,ADDR=1")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=3,ADDR=2")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=4,ADDR=3")
dbLoadRecords("db/jaws.db","P=$(MYPVPREFIX),JAWS=J1:,mXN=m1,mXS=m2,mXE=m3,mXW=m4")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=faa59Host"

