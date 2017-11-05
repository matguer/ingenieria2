﻿Object subclass: #Cart
		should: [ aCashier checkout]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText = Cashier cartIsEmpty .
		should: [ aCashier checkout]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText = Cashier creditCardIsOutdated .
		should: [ aCart add: aBook quantity: aQuantity ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText = Cart bookNotInCatalog ]! !