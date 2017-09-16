!classDefinition: #OOStackTest category: #'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:31'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/8/2012 08:20'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:33'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'First'.
	secondPushedObject := 'Second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:35'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:36'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:36'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #NullStackItem category: #'Stack-Exercise'!
Object subclass: #NullStackItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!NullStackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:02:07'!
isEmpty
	^true.! !

!NullStackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 02:07:51'!
itemValue
	^self error: 'Stack is empty'.! !

!NullStackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:51:59'!
next
	^self error: 'Stack is empty'.! !


!classDefinition: #OOStack category: #'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'top size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:47:37'!
init
	top := NullStackItem new.
	size := 0.
	^ self.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:38:21'!
isEmpty
	^ top isEmpty.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 02:06:27'!
pop
	| anItem popedItem |
	popedItem := self topItem .
	anItem := popedItem next.
	self top: anItem.
	size := size - 1.
	^ popedItem itemValue.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:55:37'!
push: aString 
	| aStackItem |
	aStackItem := StackItem init: aString next: (self topItem).
	self top: aStackItem.
	size := size + 1.
	^ self.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:47:25'!
size
	^ size.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 02:06:33'!
top
	^ top itemValue.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:01:32'!
top: aStackItem
	^ top := aStackItem.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:55:55'!
topItem
	^ top.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: #'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'gs/mg 9/16/2017 01:28:09'!
new
	^ super new init.! !

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #StackItem category: #'Stack-Exercise'!
Object subclass: #StackItem
	instanceVariableNames: 'next itemValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:02:34'!
isEmpty
	^false.! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 02:04:29'!
itemValue
	^ itemValue.! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 02:04:43'!
itemValue: aString 
	itemValue := aString.! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:40:37'!
next
	^next.! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 01:37:16'!
next: anItem 
	next := anItem.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackItem class' category: #'Stack-Exercise'!
StackItem class
	instanceVariableNames: ''!

!StackItem class methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/16/2017 02:05:27'!
init: aString next: anItem
	| newInstance |
	newInstance := super new.
	newInstance itemValue: aString.
	newInstance next: anItem.
	^ newInstance.! !
