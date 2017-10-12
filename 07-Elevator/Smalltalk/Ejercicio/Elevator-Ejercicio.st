Object subclass: #Cabin	instanceVariableNames: 'state door'	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:18'!doorOpened	door opened .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:52'!openDoorWhenStopped	^ door open .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:00'!initialize	state := CabinStoppedState for: self .	door := CabinDoor new .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:39'!isMoving	^ state isMoving .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:10'!isDoorClosing	^ door isClosing .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:19'!isStopped	^ state isStopped .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:10'!isDoorClosed	^ door isClosed .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 01:13'!closeDoorWhenMoving! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:09'!isDoorOpened	^ door isOpened .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:01'!prepareForMoving	state closeDoor .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:15'!stopWhenMoving	state := CabinStoppedState for: self .	door open .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:18'!doorClosed	door closed .	state := CabinMovingState for: self .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:25'!openDoorWhenMoving! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:05'!closeDoorWhenStopped	door close .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:20'!openDoor	state openDoor .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:26'!stop	state stop .! !!Cabin methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:10'!isDoorOpening	^ door isOpening .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!Cabin class	instanceVariableNames: ''!!Cabin class methodsFor: 'instance creation' stamp: 'Guerson 10/10/2017 19:01'!new	^super new initialize! !Object subclass: #CabinDoor	instanceVariableNames: 'state'	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 01:00'!closeWhenOpening! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:03'!initialize	state := CabinDoorOpened for: self .! !!CabinDoor methodsFor: 'initialization' stamp: 'GinoScarpino 10/11/2017 19:19'!closed	state closed .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:04'!closeWhenOpened	state := CabinDoorClosing for: self .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:23'!openWhenOpened! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:43'!openWhenClosing	state := CabinDoorOpening for: self .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:00'!close	state close .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:04'!closeWhenClosing	state := CabinDoorClosed for: self .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:32'!openWhenClosed	state := CabinDoorOpening for: self .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 01:00'!closeWhenClosed! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:10'!isClosed	^ state isClosed .! !!CabinDoor methodsFor: 'initialization' stamp: 'GinoScarpino 10/11/2017 19:22'!opened	state opened .! !!CabinDoor methodsFor: 'initialization' stamp: 'GinoScarpino 10/11/2017 19:41'!openWhenOpening	state := CabinDoorOpened for: self .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:30'!open	state open .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:35'!isOpening	^ state isOpening .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:23'!isOpened	^ state isOpened .! !!CabinDoor methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:46'!isClosing	^ state isClosing .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinDoor class	instanceVariableNames: ''!!CabinDoor class methodsFor: 'instance creation' stamp: 'Guerson 10/10/2017 19:03'!new	^super new initialize! !Object subclass: #CabinDoorState	instanceVariableNames: 'door'	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinDoorState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:46'!isClosing	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:35'!isOpening	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:23'!isOpened	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:11'!isClosed	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:04'!close	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:15'!initializeFor: aDoor

	door := aDoor.! !!CabinDoorState methodsFor: 'initialization' stamp: 'GinoScarpino 10/11/2017 20:24'!closed	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:31'!open	^ self subclassResponsibility .! !!CabinDoorState methodsFor: 'initialization' stamp: 'GinoScarpino 10/11/2017 20:24'!opened	^ self subclassResponsibility .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinDoorState class	instanceVariableNames: ''!!CabinDoorState class methodsFor: 'state selection' stamp: 'Guerson 10/10/2017 19:14'!stateFor: aDoor		^(self subclasses detect: [:aDoorStateClass | aDoorStateClass canHandle: aDoor  ]) for: aDoor .! !!CabinDoorState class methodsFor: 'state selection' stamp: 'Guerson 10/10/2017 19:14'!for: aDoor

	^self new initializeFor: aDoor .! !CabinDoorState subclass: #CabinDoorClosed	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinDoorClosed methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:46'!isClosing	^ false .! !!CabinDoorClosed methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:11'!isClosed	^ true .! !!CabinDoorClosed methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:24'!opened	ElevatorEmergency doorSensorError signal.! !!CabinDoorClosed methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:35'!isOpening	^ false .! !!CabinDoorClosed methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:27'!close	"^ door closeWhenClosed."! !!CabinDoorClosed methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 19:24'!closed	ElevatorEmergency doorSensorError signal.! !!CabinDoorClosed methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:31'!open	^ door openWhenClosed .! !!CabinDoorClosed methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:31'!isOpened	^ false .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinDoorClosed class	instanceVariableNames: ''!!CabinDoorClosed class methodsFor: 'testing' stamp: 'GinoScarpino 10/2/2017 19:27'!canHandle: anElevator

	^ anElevator isCabinDoorClosed.! !CabinDoorState subclass: #CabinDoorClosing	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinDoorClosing methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:47'!isClosing	^ true .! !!CabinDoorClosing methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:11'!isClosed	^ false .! !!CabinDoorClosing methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:23'!close	"^ door closeWhenClosing ."! !!CabinDoorClosing methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:36'!isOpening	^ false .! !!CabinDoorClosing methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:28'!opened	ElevatorEmergency doorSensorError signal.! !!CabinDoorClosing methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 19:28'!closed	^ door closeWhenClosing .! !!CabinDoorClosing methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:31'!open	^ door openWhenClosing .! !!CabinDoorClosing methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:31'!isOpened	^ false .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinDoorClosing class	instanceVariableNames: ''!!CabinDoorClosing class methodsFor: 'testing' stamp: 'GinoScarpino 10/2/2017 19:28'!canHandle: anElevator

	^ anElevator isCabinDoorClosing .! !CabinDoorState subclass: #CabinDoorOpened	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinDoorOpened methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:47'!isClosing	^ false .! !!CabinDoorOpened methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:12'!isClosed	^ false .! !!CabinDoorOpened methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 18:47'!close	"ElevatorEmergency doorSensorError signal."	^ door closeWhenOpened .! !!CabinDoorOpened methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:35'!isOpening	^ false .! !!CabinDoorOpened methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:28'!opened	! !!CabinDoorOpened methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 19:26'!closed	ElevatorEmergency doorSensorError signal.! !!CabinDoorOpened methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:31'!open	^ door openWhenOpened .! !!CabinDoorOpened methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:30'!isOpened	^ true .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinDoorOpened class	instanceVariableNames: ''!!CabinDoorOpened class methodsFor: 'testing' stamp: 'GinoScarpino 10/2/2017 19:28'!canHandle: anElevator

	^ anElevator isCabinDoorOpened .! !CabinDoorState subclass: #CabinDoorOpening	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinDoorOpening methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:47'!isClosing	^ false .! !!CabinDoorOpening methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:06'!close	^ door closeWhenOpening .! !!CabinDoorOpening methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:22'!open	"^ door openWhenOpening ."! !!CabinDoorOpening methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:36'!isOpening	^ true .! !!CabinDoorOpening methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 20:23'!opened	^ door openWhenOpening .! !!CabinDoorOpening methodsFor: 'testing' stamp: 'GinoScarpino 10/11/2017 19:29'!closed	ElevatorEmergency doorSensorError signal.! !!CabinDoorOpening methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:31'!isOpened	^ false .! !!CabinDoorOpening methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:12'!isClosed	^ false .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinDoorOpening class	instanceVariableNames: ''!!CabinDoorOpening class methodsFor: 'testing' stamp: 'GinoScarpino 10/2/2017 19:28'!canHandle: anElevator

	^ anElevator isCabinDoorOpening .! !Object subclass: #CabinState	instanceVariableNames: 'cabin'	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinState methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:21'!openDoor	^ self subclassResponsibility .! !!CabinState methodsFor: 'initialization' stamp: 'GinoScarpino 10/2/2017 20:22'!cabinOnFloor: aFloorNumber

	^ self subclassResponsibility.! !!CabinState methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 00:04'!closeDoor	^ self subclassResponsibility .! !!CabinState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:38'!isMoving	^ self subclassResponsibility .! !!CabinState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 22:26'!stop	^ self subclassResponsibility .! !!CabinState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 18:57'!initializeFor: aCabin

	cabin := aCabin.! !!CabinState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:20'!isStopped	^ self subclassResponsibility .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinState class	instanceVariableNames: ''!!CabinState class methodsFor: 'state selection' stamp: 'Guerson 10/10/2017 18:58'!stateFor: aCabin		^(self subclasses detect: [:aCabinStateClass | aCabinStateClass canHandle: aCabin ]) for: aCabin .! !!CabinState class methodsFor: 'state selection' stamp: 'Guerson 10/10/2017 18:58'!for: aCabin

	^self new initializeFor: aCabin.! !CabinState subclass: #CabinMovingState	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinMovingState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:31'!isStopped	^ false .! !!CabinMovingState methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:05'!closeDoor	cabin closeDoorWhenMoving! !!CabinMovingState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:38'!isMoving	^ true .! !!CabinMovingState methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:22'!openDoor	^ cabin openDoorWhenMoving .! !!CabinMovingState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:27'!stop	cabin stopWhenMoving .! !!CabinMovingState methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/2/2017 20:22'!cabinOnFloor: aFloorNumber	^ elevator cabinOnFloorWhenCabinIsMoving: aFloorNumber .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinMovingState class	instanceVariableNames: ''!!CabinMovingState class methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:37'!canHandle: anElevator

	^ anElevator isCabinMoving.! !CabinState subclass: #CabinStoppedState	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!CabinStoppedState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:31'!isStopped	^ true .! !!CabinStoppedState methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:05'!closeDoor	^ cabin closeDoorWhenStopped .! !!CabinStoppedState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:38'!isMoving	^ false .! !!CabinStoppedState methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:22'!openDoor	^ cabin openDoorWhenStopped .! !!CabinStoppedState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:28'!stop	cabin stopWhenStopped .! !!CabinStoppedState methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/2/2017 20:22'!cabinOnFloor: aFloorNumber	^ elevator cabinOnFloorWhenCabinIsNotMoving: aFloorNumber .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!CabinStoppedState class	instanceVariableNames: ''!!CabinStoppedState class methodsFor: 'testing' stamp: 'GinoScarpino 10/2/2017 20:10'!canHandle: anElevator

	^ anElevator isCabinStopped.! !Object subclass: #ElevatorController	instanceVariableNames: 'state cabin cabinFloorNumber floorsToGo'	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!ElevatorController methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/2/2017 19:37'!cabinDoorClosedWhenDoorIsClosing	cabinDoorState := #closed.	cabinState := #moving.! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 01:11'!closeCabinDoorWhenWorking	cabin prepareForMoving ."	self isIdle ifFalse: [ 		self isCabinMoving ifFalse: [ 			self isCabinDoorOpening ifFalse: [ 				cabinDoorState := #closing			]		].	]."	! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 01:11'!closeCabinDoorWhenIdle! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 01:11'!closeCabinDoor	state closeCabinDoor .! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 01:04'!waitForPeopleTimedOut	cabin prepareForMoving .! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 01:07'!cabinDoorOpened	cabin doorOpened .	floorsToGo isEmpty ifTrue: [ state := ElevatorControllerIdleState for: self ]	! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/12/2017 02:34'!goUpPushedFromFloor: aFloorNumber	state := ElevatorControllerWorkingState for: self .	cabin prepareForMoving .	floorsToGo addFirst: aFloorNumber .! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 00:20'!openCabinDoor	cabin openDoor ."	self isCabinDoorOpened ifTrue: [ cabinDoorState := #opened. ] ifFalse: [ 		self isCabinMoving ifTrue: [ ^ self ] ifFalse: [  		cabinDoorState := #opening. ]	]."	! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/2/2017 20:18'!cabinOnFloorWhenCabinIsNotMoving: aFloorNumber	ElevatorEmergency cabinSensorError signal.! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/1/2017 18:14'!isCabinWaitingForPeople	^ floorsToGo size > 0.! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/2/2017 19:36'!cabinDoorClosedWhenDoorIsNotClosing	ElevatorEmergency doorSensorError signal.! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'GinoScarpino 10/2/2017 20:19'!cabinOnFloorWhenCabinIsMoving: aFloorNumber		cabinDoorState := #opening.		cabinState := #stopped.		cabinFloorNumber := aFloorNumber.		floorsToGo removeLast.	! !!ElevatorController methodsFor: 'as yet unclassified' stamp: 'Guerson 10/11/2017 00:19'!cabinDoorClosed	cabin doorClosed .! !!ElevatorController methodsFor: 'initialization' stamp: 'GinoScarpino 10/11/2017 17:46'!initialize	state := ElevatorControllerIdleState for: self .	cabin := Cabin new .	cabinFloorNumber := 0 .	floorsToGo := OrderedCollection new .! !!ElevatorController methodsFor: 'initialization' stamp: 'GinoScarpino 10/12/2017 03:43'!cabinOnFloor: aFloorNumber| aFloorToGo |floorsToGo  ifEmpty: [ ElevatorEmergency cabinSensorError signal ].aFloorToGo := floorsToGo at: (floorsToGo size)."Si sé saltó un piso lanzo error"((aFloorToGo - cabinFloorNumber) - (aFloorToGo - aFloorNumber)) abs = 1 ifFalse: [ ElevatorEmergency cabinSensorError signal ].(floorsToGo indexOf: aFloorNumber) > 0 ifTrue: [    floorsToGo removeAt: (floorsToGo indexOf: aFloorNumber).    cabinFloorNumber := aFloorNumber.    cabin stop.]ifFalse: [	"Si tengo que subir, subo"    (aFloorToGo > cabinFloorNumber and: (cabinFloorNumber < aFloorNumber)) ifTrue: [         cabinFloorNumber := aFloorNumber.    ]    ifFalse: [ 		"Si tengo que bajar, bajo"        (aFloorToGo < cabinFloorNumber and: (cabinFloorNumber > aFloorNumber)) ifTrue: [             cabinFloorNumber := aFloorNumber.        ]         ifFalse:[				"Tenia que subir o bajar pero fue para el otro lado"            ElevatorEmergency cabinSensorError signal        ]    ]]! !!ElevatorController methodsFor: 'accessing' stamp: 'GinoScarpino 10/1/2017 16:14'!cabinFloorNumber: aNumber	cabinFloorNumber := aNumber.! !!ElevatorController methodsFor: 'accessing' stamp: 'Guerson 10/10/2017 21:41'!cabinFloorNumber	^ cabinFloorNumber .! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/10/2017 22:09'!isCabinMoving	^ cabin isMoving .! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:10'!isCabinDoorClosed	^ cabin isDoorClosed .! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:33'!isWorking	^ state isWorking .! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:11'!isCabinDoorClosing	^ cabin isDoorClosing.! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:27'!isCabinStopped	^ cabin isStopped .! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:26'!isIdle	^ state isIdle.! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:11'!isCabinDoorOpening	^ cabin isDoorOpening .! !!ElevatorController methodsFor: 'testing' stamp: 'Guerson 10/11/2017 00:09'!isCabinDoorOpened	^ cabin isDoorOpened .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!ElevatorController class	instanceVariableNames: ''!!ElevatorController class methodsFor: 'instance creation' stamp: 'Guerson 10/10/2017 19:13'!new 	^ super new initialize .! !Object subclass: #ElevatorControllerState	instanceVariableNames: 'elevatorController'	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!ElevatorControllerState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:08'!initializeFor: anElevatorController

	elevatorController := anElevatorController .! !!ElevatorControllerState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:11'!isIdle	^ self subclassResponsibility .! !!ElevatorControllerState methodsFor: 'initialization' stamp: 'Guerson 10/11/2017 01:11'!closeCabinDoor	^ self subclassResponsibility .! !!ElevatorControllerState methodsFor: 'initialization' stamp: 'Guerson 10/10/2017 19:33'!isWorking	^ self subclassResponsibility .! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!ElevatorControllerState class	instanceVariableNames: ''!!ElevatorControllerState class methodsFor: 'state selection' stamp: 'Guerson 10/10/2017 19:09'!stateFor: anElevatorController		^(self subclasses detect: [:anElevatorControllerStateClass | anElevatorControllerStateClass canHandle: anElevatorController ]) for: anElevatorController .! !!ElevatorControllerState class methodsFor: 'state selection' stamp: 'Guerson 10/10/2017 19:08'!for: anElevatorController

	^self new initializeFor: anElevatorController.! !ElevatorControllerState subclass: #ElevatorControllerIdleState	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!ElevatorControllerIdleState methodsFor: 'testing' stamp: 'Guerson 10/11/2017 01:12'!closeCabinDoor	^ elevatorController closeCabinDoorWhenIdle . ! !!ElevatorControllerIdleState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:30'!isIdle	^ true . ! !!ElevatorControllerIdleState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:33'!isWorking	^ false . ! !ElevatorControllerState subclass: #ElevatorControllerWorkingState	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!ElevatorControllerWorkingState methodsFor: 'testing' stamp: 'Guerson 10/11/2017 01:12'!closeCabinDoor	^ elevatorController closeCabinDoorWhenWorking . ! !!ElevatorControllerWorkingState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:32'!isIdle	^ false . ! !!ElevatorControllerWorkingState methodsFor: 'testing' stamp: 'Guerson 10/10/2017 19:33'!isWorking	^ true . ! !Error subclass: #ElevatorEmergency	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!ElevatorEmergency class	instanceVariableNames: ''!!ElevatorEmergency class methodsFor: 'accessing' stamp: 'GinoScarpino 10/2/2017 18:49'!cabinSensorError	^ (super new) messageText: 'Sensor de cabina desincronizado'.! !!ElevatorEmergency class methodsFor: 'accessing' stamp: 'GinoScarpino 10/2/2017 18:49'!doorSensorError	^ (super new) messageText: 'Sensor de puerta desincronizado'.! !TestCase subclass: #ElevatorTest	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'Elevator-Ejercicio'!!ElevatorTest methodsFor: 'tests 1' stamp: 'Guerson 10/10/2017 19:37'!test03CabinStartsMovingWhenDoorGetsClosed

	| elevatorController |
	elevatorController := ElevatorController new.

	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	
	self deny: elevatorController isIdle.
	self assert: elevatorController isWorking.

	self deny: elevatorController isCabinStopped.
	self assert: elevatorController isCabinMoving.
	
	self deny: elevatorController isCabinDoorOpened.
	self deny: elevatorController isCabinDoorOpening.
	self deny: elevatorController isCabinDoorClosing.
	self assert: elevatorController isCabinDoorClosed.! !!ElevatorTest methodsFor: 'tests 1' stamp: 'Guerson 10/10/2017 19:37'!test04CabinStopsAndStartsOpeningDoorWhenGetsToDestination

	| elevatorController |
	elevatorController := ElevatorController new.

	elevatorController goUpPushedFromFloor: 1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor: 1.

	self deny: elevatorController isIdle.
	self assert: elevatorController isWorking.
	
	self assert: elevatorController isCabinStopped.
	self deny: elevatorController isCabinMoving.
			
	self deny: elevatorController isCabinDoorOpened.
	self assert: elevatorController isCabinDoorOpening.
	self deny: elevatorController isCabinDoorClosing.
	self deny: elevatorController isCabinDoorClosed.

	self assert: elevatorController cabinFloorNumber = 1
! !!ElevatorTest methodsFor: 'tests 1' stamp: 'HernanWilkinson 7/10/2011 17:33'!test01ElevatorStartsIdleWithDoorOpenOnFloorZero

	| elevatorController |
		
	elevatorController := ElevatorController new.
		
	self assert: elevatorController isIdle.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpened.
	self assert: elevatorController cabinFloorNumber = 0
! !!ElevatorTest methodsFor: 'tests 1' stamp: 'Guerson 10/10/2017 19:37'!test02CabinDoorStartsClosingWhenElevatorGetsCalled

	| elevatorController |
	elevatorController := ElevatorController new.

	elevatorController goUpPushedFromFloor: 1.
	
	self deny: elevatorController isIdle.
	self assert: elevatorController isWorking.
	
	self assert: elevatorController isCabinStopped.
	self deny: elevatorController isCabinMoving.
	
	self deny: elevatorController isCabinDoorOpened.
	self deny: elevatorController isCabinDoorOpening.
	self assert: elevatorController isCabinDoorClosing.
	self deny: elevatorController isCabinDoorClosed.! !!ElevatorTest methodsFor: 'tests 1' stamp: 'Guerson 10/10/2017 19:37'!test05ElevatorGetsIdleWhenDoorGetOpened

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor: 1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor: 1.
	elevatorController cabinDoorOpened.
		
	self assert: elevatorController isIdle.
	self deny: elevatorController isWorking.
		
	self assert: elevatorController isCabinStopped.
	self deny: elevatorController isCabinMoving.

	self assert: elevatorController isCabinDoorOpened.
	self deny: elevatorController isCabinDoorOpening.
	self deny: elevatorController isCabinDoorClosing.
	self deny: elevatorController isCabinDoorClosed.
		
	self assert: elevatorController cabinFloorNumber = 1! !!ElevatorTest methodsFor: 'tests 2' stamp: 'Guerson 10/10/2017 19:37'!test08CanNotOpenDoorWhenCabinIsMoving

	| elevatorController |
	elevatorController := ElevatorController new.

	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinMoving.
	self assert: elevatorController isCabinDoorClosed.

	elevatorController openCabinDoor.
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinMoving.
	self assert: elevatorController isCabinDoorClosed.! !!ElevatorTest methodsFor: 'tests 2' stamp: 'HernanWilkinson 7/10/2011 17:35'!test06DoorKeepsOpenedWhenOpeningIsRequested

	| elevatorController |
	elevatorController := ElevatorController new.
	
	self assert: elevatorController isCabinDoorOpened.
	
	elevatorController openCabinDoor.

	self assert: elevatorController isCabinDoorOpened.! !!ElevatorTest methodsFor: 'tests 2' stamp: 'HernanWilkinson 7/10/2011 17:51'!test09DoorKeepsOpeneingWhenItIsOpeneing

	| elevatorController |
	elevatorController := ElevatorController new.

	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.

	elevatorController openCabinDoor.
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.! !!ElevatorTest methodsFor: 'tests 2' stamp: 'HernanWilkinson 6/16/2014 13:24'!test07DoorMustBeOpenedWhenCabinIsStoppedAndClosingDoors

	| elevatorController |
	elevatorController := ElevatorController new.

	elevatorController goUpPushedFromFloor:1.
		
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorClosing.
		
	elevatorController openCabinDoor.
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.
! !!ElevatorTest methodsFor: 'tests 3' stamp: 'HernanWilkinson 7/10/2011 17:39'!test10CabinDoorStartClosingAfterWaitingForPeople

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinDoorOpened.
	elevatorController waitForPeopleTimedOut.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorClosing.! !!ElevatorTest methodsFor: 'tests 3' stamp: 'HernanWilkinson 7/10/2011 17:39'!test12CloseDoorDoesNothingIfIdle

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController closeCabinDoor.

	self assert: elevatorController isIdle.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpened.! !!ElevatorTest methodsFor: 'tests 3' stamp: 'HernanWilkinson 7/10/2011 17:40'!test14CloseDoorDoesNothingWhenOpeningTheDoorToWaitForPeople

	| elevatorController |
	elevatorController := ElevatorController new.
		
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.

	elevatorController closeCabinDoor.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.! !!ElevatorTest methodsFor: 'tests 3' stamp: 'Guerson 10/10/2017 19:37'!test13CloseDoorDoesNothingWhenCabinIsMoving

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinMoving.
	self assert: elevatorController isCabinDoorClosed.

	elevatorController closeCabinDoor.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinMoving.
	self assert: elevatorController isCabinDoorClosed.! !!ElevatorTest methodsFor: 'tests 3' stamp: 'HernanWilkinson 7/10/2011 17:38'!test09RequestToGoUpAreEnqueueWhenRequestedWhenCabinIsMoving

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinDoorOpened.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinWaitingForPeople.
	self assert: elevatorController isCabinDoorOpened.! !!ElevatorTest methodsFor: 'tests 3' stamp: 'HernanWilkinson 7/10/2011 17:39'!test11StopsWaitingForPeopleIfCloseDoorIsPressed

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinDoorOpened.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinWaitingForPeople.
	self assert: elevatorController isCabinDoorOpened.

	elevatorController closeCabinDoor.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorClosing.
! !!ElevatorTest methodsFor: 'tests 4' stamp: 'HernanWilkinson 7/10/2011 17:48'!test18ElevatorHasToEnterEmergencyIfDoorClosesAutomatically
	| elevatorController |
	elevatorController := ElevatorController new.
	
	self 
		should: [ elevatorController cabinDoorClosed.]
		raise: ElevatorEmergency 
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de puerta desincronizado' ]! !!ElevatorTest methodsFor: 'tests 4' stamp: 'HernanWilkinson 7/10/2011 17:47'!test16ElevatorHasToEnterEmergencyIfFalling

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	self 
		should: [ elevatorController cabinOnFloor:0 ]
		raise: ElevatorEmergency 
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de cabina desincronizado'. ]! !!ElevatorTest methodsFor: 'tests 4' stamp: 'HernanWilkinson 7/10/2011 17:48'!test19ElevatorHasToEnterEmergencyIfDoorClosedSensorTurnsOnWhenClosed

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	self 
		should: [elevatorController cabinDoorClosed.]
		raise: ElevatorEmergency 
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de puerta desincronizado'. ]! !!ElevatorTest methodsFor: 'tests 4' stamp: 'HernanWilkinson 7/10/2011 17:49'!test20ElevatorHasToEnterEmergencyIfDoorClosesWhenOpening
	| elevatorController |
	elevatorController := ElevatorController new.
		
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	self 
		should: [elevatorController cabinDoorClosed.]
		raise: ElevatorEmergency 
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de puerta desincronizado'.]! !!ElevatorTest methodsFor: 'tests 4' stamp: 'GinoScarpino 10/2/2017 00:15'!test15ElevatorHasToEnterEmergencyIfStoppedAndOtherFloorSensorTurnsOn

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:1.
	self 
		should: [ elevatorController cabinOnFloor:0 ]
		raise: ElevatorEmergency 
		withExceptionDo: [ :elevatorEmergency | 			self assert: elevatorEmergency messageText = 'Sensor de cabina desincronizado' ]! !!ElevatorTest methodsFor: 'tests 4' stamp: 'HernanWilkinson 7/10/2011 17:47'!test17ElevatorHasToEnterEmergencyIfJumpsFloors

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:3.
	elevatorController cabinDoorClosed.
	self 
		should: [ elevatorController cabinOnFloor: 3 ]
		raise: ElevatorEmergency 
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de cabina desincronizado'. ]! !!ElevatorTest methodsFor: 'tests 5' stamp: 'HernanWilkinson 7/10/2011 17:50'!test21CabinHasToStopOnTheFloorsOnItsWay
	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinOnFloor:1.

	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.! !!ElevatorTest methodsFor: 'tests 5' stamp: 'HernanWilkinson 7/10/2011 17:51'!test24CabinHasToStopAndWaitForPeopleOnFloorsOnItsWayNoMatterHowTheyWellCalled

	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinDoorClosed.
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinOnFloor:1.
	elevatorController cabinDoorOpened.
	elevatorController waitForPeopleTimedOut.
	
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorClosing.! !!ElevatorTest methodsFor: 'tests 5' stamp: 'HernanWilkinson 7/10/2011 17:50'!test22ElevatorCompletesAllTheRequests
	| elevatorController |
	elevatorController := ElevatorController new.
	
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinDoorClosed.
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinOnFloor:1.
	elevatorController cabinDoorOpened.
	elevatorController waitForPeopleTimedOut.
	elevatorController cabinDoorClosed.
	elevatorController cabinOnFloor:2.
	
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.! !!ElevatorTest methodsFor: 'tests 5' stamp: 'HernanWilkinson 7/10/2011 17:50'!test23CabinHasToStopOnFloorsOnItsWayNoMatterHowTheyWellCalled

	| elevatorController |
	elevatorController := ElevatorController new.
		
	elevatorController goUpPushedFromFloor:2.
	elevatorController cabinDoorClosed.
	elevatorController goUpPushedFromFloor:1.
	elevatorController cabinOnFloor:1.
		
	self assert: elevatorController isWorking.
	self assert: elevatorController isCabinStopped.
	self assert: elevatorController isCabinDoorOpening.! !