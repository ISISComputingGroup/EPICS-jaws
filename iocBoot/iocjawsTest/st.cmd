#!../../bin/windows-x64-debug/jawsTest

## You may have to change jawsTest to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

set_requestfile_path("${MOTOR}/motorApp/Db", "")

## Register all support components
dbLoadDatabase "dbd/jawsTest.dbd"
jawsTest_registerRecordDeviceDriver pdbbase

# Create simulated motors: ( start card , start axis , low limit, high limit, home posn, # cards, # axes to setup)
motorSimCreate( 0, 0, -32000, 32000, 0, 1, 16 )

# Setup the Asyn layer (portname, low-level driver drvet name, card, number of axes on card)
drvAsynMotorConfigure("motorSim1", "motorSim", 0, 16)

## Load our record instances
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0101,ADDR=0")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0101,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0102,ADDR=1")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0102,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0103,ADDR=2")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0103,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0104,ADDR=3")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0104,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jaws.db","P=$(MYPVPREFIX),JAWS=MOT:JAWS1:,mXN=MOT:MTR0101,mXS=MOT:MTR0102,mXE=MOT:MTR0103,mXW=MOT:MTR0104")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0105,ADDR=4")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0105,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0106,ADDR=5")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0106,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0107,ADDR=6")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0107,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0108,ADDR=7")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0108,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jaws.db","P=$(MYPVPREFIX),JAWS=MOT:JAWS2:,mXN=MOT:MTR0105,mXS=MOT:MTR0106,mXE=MOT:MTR0107,mXW=MOT:MTR0108")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0201,ADDR=8")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0201,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0202,ADDR=9")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0202,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0203,ADDR=10")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0203,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0204,ADDR=11")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0204,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jaws.db","P=$(MYPVPREFIX),JAWS=MOT:JAWS3:,mXN=MOT:MTR0201,mXS=MOT:MTR0202,mXE=MOT:MTR0203,mXW=MOT:MTR0204")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0205,ADDR=12")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0205,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0206,ADDR=13")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0206,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0207,ADDR=14")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0207,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jawsTest.db","P=$(MYPVPREFIX),M=MOT:MTR0208,ADDR=15")
dbLoadRecords("${MOTOR}/motorApp/Db/stop_all.db","P=$(MYPVPREFIX),M=MOT:MTR0208,AS=$(MYPVPREFIX)CS")
dbLoadRecords("db/jaws.db","P=$(MYPVPREFIX),JAWS=MOT:JAWS4:,mXN=MOT:MTR0205,mXS=MOT:MTR0206,mXE=MOT:MTR0207,mXW=MOT:MTR0208")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=faa59Host"

