REM Load records for Jawset that only has vertical blades only

$(IFIOC_GALIL_01) dbLoadRecords("$(JAWS)/db/jaws_vertical.db","P=$(MYPVPREFIX)MOT:,JAWS=JAWS1:,mXN=MTR0101,mXS=MTR0102")
