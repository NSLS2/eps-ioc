#!../../bin/linux-x86_64/eps

#- You may have to change eps to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/eps.dbd",0,0)
eps_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/eps.db","user=hxu")

iocInit()

## Start any sequence programs
#seq snceps,"user=hxu"
