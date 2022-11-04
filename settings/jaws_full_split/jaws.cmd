# Load records for full jawset that is split over two separate motor controllers

$(IFIOC_GALIL_01=#) dbLoadRecords("$(JAWS)/db/split_jaws_header_vertical.db","P=$(MYPVPREFIX)MOT:,JAWS=JAWS1:,mXN=MTR0101,mXS=MTR0102,mXW=MTR0202,mXE=MTR0201,IFINIT_FROM_AS=$(IFINIT_JAWS_FROM_AS=#),IFNOTINIT_FROM_AS=$(IFNOTINIT_JAWS_FROM_AS=)")
$(IFIOC_GALIL_02=#) dbLoadRecords("$(JAWS)/db/split_jaws_horizontal.db","P=$(MYPVPREFIX)MOT:,JAWS=JAWS1:,mXW=MTR0202,mXE=MTR0201,IFINIT_FROM_AS=$(IFINIT_JAWS_FROM_AS=#),IFNOTINIT_FROM_AS=$(IFNOTINIT_JAWS_FROM_AS=)")
