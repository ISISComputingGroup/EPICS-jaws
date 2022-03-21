# EPICS-jaws

The jaws are an abstraction layer in the form of a set of records that can be placed onto 4 motors
which represent the North, South, East and West blade. They will allow a centre and gap to be set in both horizontal and vertical directions. 
It is a requirement that if an underlying motor position is set then the gap and centre should adjust to be in sync.

The jaws are a `.db` record which can be added to most motors. The `.db` is assembled from records for individual jaw blades, and header records 
which describe the jawset as a whole (e.g. the overall lock status depending on the lock status of each individual blade). 
They are loaded via a jaws.cmd file in the configuration area which is read by the motor IOCs. The exact location is dependent on the type of motor.

## WIKI
Please see the WIKI for more information on Jaws:
- [Jaws](https://github.com/ISISComputingGroup/ibex_developers_manual/wiki/Jaws)
- [Jaws and Slits](https://github.com/ISISComputingGroup/ibex_developers_manual/wiki/Jaws-and-slits)
- [Jaws Managers](https://github.com/ISISComputingGroup/ibex_developers_manual/wiki/Jaws-Managers)

## System Tests
The motion set points system tests are located in the [EPICS-IOC_Test_Frameork](https://github.com/ISISComputingGroup/EPICS-IOC_Test_Framework): `EPICS-IOC_Test_Framework\tests\jaws.py`

To run the system tests, run the following command from and EPICS Terminal (`C:\Instrument\Apps\EPICS\config_env.bat`): `python run_tests.py -t jaws`.

Use the `-a` flag if you want to run the motionSetPoints emulator for manual testing.
