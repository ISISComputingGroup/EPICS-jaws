REM Load records for full jawset that is split over two separate motor controllers

$(IFIOC_GALILMUL_01=#) dbLoadRecords("$(JAWS)/db/jaws.db","P=$(MYPVPREFIX)MOT:,JAWS=JAWS1:,mXN=MTR0101,mXS=MTR0102,mXW=MTR0103,mXE=MTR0201")
