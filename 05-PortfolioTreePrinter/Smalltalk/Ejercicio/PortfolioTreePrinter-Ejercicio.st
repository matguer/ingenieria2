!classDefinition: #PortfolioTest category: #'PortfolioTreePrinter-Ejercicio'!
TestCase subclass: #PortfolioTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!PortfolioTest methodsFor: 'test support' stamp: 'gs/mg 9/28/2017 15:15:39'!
accountSummaryLinesOf: aReceptiveAccount

	| summaryLines |
	
	summaryLines := SummaryLines for: aReceptiveAccount.
	^ summaryLines compute.! !

!PortfolioTest methodsFor: 'test support' stamp: 'Guerson 9/28/2017 00:51'!
accountTransferNetOf: aReceptiveAccount	| aTransferNet |	aTransferNet := TransferNet for: aReceptiveAccount .	^ aTransferNet compute .! !

!PortfolioTest methodsFor: 'test support' stamp: 'Guerson 9/28/2017 00:57'!
investmentEarningsOf: aReceptiveAccount	| earnings |	earnings := InvestmentEarnings for: aReceptiveAccount .	^ earnings compute .! !

!PortfolioTest methodsFor: 'test support' stamp: 'Guerson 9/28/2017 00:51'!
investmentNetOf: aReceptiveAccount	| anInvestmentNet |	anInvestmentNet := InvestmentNet for: aReceptiveAccount .	^ anInvestmentNet compute .! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 9/6/2016 19:43'!
portofolioTreeOf: aPortfolio namingAccountWith: aDictionary	self shouldBeImplemented ! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 9/6/2016 19:43'!
reversePortofolioTreeOf: aPortfolio namingAccountWith: aDictionary	self shouldBeImplemented ! !


!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test01ReceptiveAccountHaveZeroAsBalanceWhenCreated	| account |	account := ReceptiveAccount new.	self assert: 0 = account compute .! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test02DepositIncreasesBalanceOnTransactionValue	| account |	account := ReceptiveAccount  new.	Deposit register: 100 on: account.	self assert: 100 = account compute .! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test03WithdrawDecreasesBalanceOnTransactionValue	| account |	account := ReceptiveAccount new.	Deposit register: 100 on: account.	Withdraw register: 50 on: account.	self assert: 50 = account compute .! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test04PortfolioBalanceIsSumOfManagedAccountsBalance	| account1 account2 complexPortfolio |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	Deposit register: 100 on: account1.	Deposit register: 200 on: account2.	self assert:300 = complexPortfolio compute .! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test05PortfolioCanManagePortfolios	| account1 account2 account3 complexPortfolio composedPortfolio |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	Deposit register: 100 on:account1.	Deposit register: 200 on: account2.	Deposit register: 300 on: account3.	self assert: 600 = composedPortfolio compute .! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 9/25/2017 20:14:36'!
test06ReceptiveAccountKnowsRegisteredTransactions	| account deposit withdraw |	account := ReceptiveAccount new.	deposit := Deposit register: 100 on: account.	withdraw := Withdraw register: 50 on: account.	self assert: (account registers: deposit).	self assert: (account registers: withdraw).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 9/25/2017 20:14:30'!
test07ReceptiveAccountDoNotKnowNotRegisteredTransactions	| account deposit withdraw |	account := ReceptiveAccount new.	deposit :=  Deposit for: 100.	withdraw := Withdraw for: 50.	self deny: (account registers: deposit).	self deny: (account registers:withdraw).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:51'!
test08PortfolioKnowsTransactionsRegisteredByItsManagedAccounts	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 deposit2 deposit3 |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	deposit1 := Deposit register: 100 on: account1.	deposit2 := Deposit register: 200 on: account2.	deposit3 := Deposit register: 300 on: account3. 	self assert: (composedPortfolio registers: deposit1).	self assert: (composedPortfolio registers: deposit2).	self assert: (composedPortfolio registers: deposit3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:25'!
test08PortofolioKnowsTransactionsRegisteredByItsManagedAccounts	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 deposit2 deposit3 |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	deposit1 := Deposit register: 100 on: account1.	deposit2 := Deposit register: 200 on: account2.	deposit3 := Deposit register: 300 on: account3. 	self assert: (composedPortfolio registers: deposit1).	self assert: (composedPortfolio registers: deposit2).	self assert: (composedPortfolio registers: deposit3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:00'!
test10ReceptiveAccountManageItSelf	| account1 |	account1 := ReceptiveAccount new.	self assert: (account1 manages:account1).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:01'!
test11ReceptiveAccountDoNotManageOtherAccount	| account1 account2 |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	self deny: (account1 manages: account2).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:02'!
test12PortfolioManagesComposedAccounts	| account1 account2 account3 complexPortfolio |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	self assert: (complexPortfolio manages: account1).	self assert: (complexPortfolio manages: account2).	self deny: (complexPortfolio manages: account3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:03'!
test13PortfolioManagesComposedAccountsAndPortfolios	| account1 account2 account3 complexPortfolio composedPortfolio |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	self assert: (composedPortfolio manages: account1).	self assert: (composedPortfolio manages: account2).	self assert: (composedPortfolio manages: account3).	self assert: (composedPortfolio manages: complexPortfolio).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:28'!
test14AccountKnowsItsTransactions	| account1 deposit1 |	account1 := ReceptiveAccount new.	deposit1 := Deposit register: 100 on:account1.	self assert: 1=account1 transactions size .	self assert: (account1 transactions includes: deposit1).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/18/2011 17:15'!
test15PortfolioTransactionsIsTheUnionOftsAccountsTransactions	| account1 account2 account3 complexPortfolio account composedPortfolio deposit1 deposit2 deposit3 |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	deposit1 := Deposit register: 100 on: account1.	deposit2 := Deposit register: 200 on: account2.	deposit3 := Deposit register: 300 on: account3.	self assert: 3 = composedPortfolio transactions size .	self assert: (composedPortfolio transactions includes: deposit1).	self assert: (composedPortfolio transactions includes: deposit2).	self assert: (composedPortfolio transactions includes: deposit3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:23'!
test16PortfolioKnowsItsAccountsTransactions	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	deposit1 := Deposit register: 100 on: account1.	self assert: 1= (composedPortfolio transactionsOf:account1) size .	self assert: ((composedPortfolio transactionsOf: account1) includes:deposit1).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:23'!
test17PortfolioKnowsItsPortfoliosTransactions	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 deposit2 |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	deposit1 := Deposit register: 100 on: account1.	deposit2 := Deposit register: 100 on: account2.	Deposit register: 100 on: account3.	self assert: 2 = (composedPortfolio transactionsOf:complexPortfolio) size .	self assert: ((composedPortfolio transactionsOf:complexPortfolio) includes:deposit1).	self assert: ((composedPortfolio transactionsOf:complexPortfolio) includes:deposit2).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:24'!
test18PortfolioCanNotAnswerTransactionsOfNotManagedAccounts	| account1 account2 account3 complexPortfolio |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	self		should: [ complexPortfolio transactionsOf:account3 ]		raise: Error		withExceptionDo: [ :accountNotManaged |			self assert: Portfolio accountNotManagedMessageDescription = accountNotManaged messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:28'!
test19CanNotCreatePortfoliosWithRepeatedAccount	| account1 |	account1 := ReceptiveAccount new.	self		should: [ Portfolio with: account1 with: account1 ]		raise: Error		withExceptionDo: [ :invalidPortfolio |			self assert: Portfolio accountAlreadyManagedErrorMessage  = invalidPortfolio messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:15'!
test20CanNotCreatePortfoliosWithAccountsManagedByOtherManagedPortfolio	| account1 account2 complexPortfolio |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	self		should: [ Portfolio with: complexPortfolio with: account1 ]		raise: Error		withExceptionDo: [ :invalidPortfolio |			self assert: Portfolio accountAlreadyManagedErrorMessage = invalidPortfolio messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test21TransferShouldWithdrawFromFromAccountAndDepositIntoToAccount	| fromAccount toAccount |	fromAccount := ReceptiveAccount new.	toAccount := ReceptiveAccount new.	Transfer register: 100 from: fromAccount to: toAccount.	self assert: -100 = fromAccount compute.	self assert:  100 = toAccount compute.! !

!PortfolioTest methodsFor: 'tests' stamp: 'gs/mg 9/28/2017 15:18:57'!
test22AccountSummaryShouldProvideHumanReadableTransactionsDetail	| fromAccount toAccount lines |	fromAccount := ReceptiveAccount new.	toAccount := ReceptiveAccount new.	Deposit register: 100 on: fromAccount.	Withdraw register: 50 on: fromAccount.	Transfer register: 100 from: fromAccount to: toAccount.	lines := self accountSummaryLinesOf: fromAccount.
		self assert: 3 = lines size.	self assert: 'Deposito por 100' = (lines at: 1).	self assert: 'Extraccion por 50' = (lines at: 2).	self assert: 'Transferencia por -100' = (lines at: 3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 06:58'!
test23ShouldBeAbleToBeQueryTransferNet	| fromAccount toAccount |	fromAccount := ReceptiveAccount new.	toAccount := ReceptiveAccount new.	Deposit register: 100 on: fromAccount.	Withdraw register: 50 on: fromAccount.	Transfer register: 100 from: fromAccount to: toAccount.	Transfer register: 250 from: toAccount to: fromAccount.	self assert: 150 = (self accountTransferNetOf: fromAccount).	self assert: -150 = (self accountTransferNetOf: toAccount).! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/28/2017 00:42'!
test24CertificateOfDepositShouldWithdrawInvestmentValue	| account toAccount |	account := ReceptiveAccount new.	toAccount := ReceptiveAccount new.	Deposit register: 1000 on: account.	Withdraw register: 50 on: account.	Transfer register: 100 from: account to: toAccount.	CertificateOfDeposit register: 100 during: 30 at: 1/10 on: account.	self assert: 100 =(self investmentNetOf:account).	self assert: 750 = account compute.! !

!PortfolioTest methodsFor: 'tests' stamp: 'Guerson 9/27/2017 01:18'!
test25ShouldBeAbleToQueryInvestmentEarnings	| account investmentEarnings |	account := ReceptiveAccount new.	CertificateOfDeposit register: 100 during: 30 at: 1/10 on: account.	CertificateOfDeposit register: 100 during: 60 at: 15/100 on: account.	investmentEarnings :=		(100*((1/10)/360)*30) +		(100*((15/100)/360)*60).	self assert: investmentEarnings = (self investmentEarningsOf: account).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 8/13/2017 18:37:21'!
test26AccountSummaryShouldWorkWithCertificateOfDeposit	| fromAccount toAccount lines |	fromAccount := ReceptiveAccount new.	toAccount := ReceptiveAccount new.	Deposit register: 100 on: fromAccount.	Withdraw register: 50 on: fromAccount.	Transfer register: 100 from: fromAccount to: toAccount.	CertificateOfDeposit register: 1000 during: 30 at: 1/10 on: fromAccount.	lines := self accountSummaryLinesOf: fromAccount.	self assert: 4 = lines size.	self assert: 'Deposito por 100' =  (lines at: 1).	self assert: 'Extraccion por 50' =  (lines at: 2).	self assert: 'Transferencia por -100' = (lines at: 3).	self assert: 'Plazo fijo por 1000 durante 30 dias a una tna de 10%' = (lines at: 4).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 06:58'!
test27ShouldBeAbleToBeQueryTransferNetWithCertificateOfDeposit	| fromAccount toAccount |	fromAccount := ReceptiveAccount new.	toAccount := ReceptiveAccount new.	Deposit register: 100 on: fromAccount.	Withdraw register: 50 on: fromAccount.	Transfer register: 100 from: fromAccount to: toAccount.	Transfer register: 250 from: toAccount to: fromAccount.	CertificateOfDeposit register: 1000 during: 30 at: 1/10 on: fromAccount.	self assert: 150 = (self accountTransferNetOf: fromAccount).	self assert: -150 = (self accountTransferNetOf: toAccount).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:29'!
test28PortfolioTreePrinterPrintsTheCompositeInDepthFirstOrder	| account1 account2 account3 complexPortfolio composedPortfolio accountNames lines |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	accountNames := Dictionary new.	accountNames at: composedPortfolio put: 'composedPortfolio'.	accountNames at: complexPortfolio put: 'complexPortfolio'.	accountNames at: account1 put: 'account1'.	accountNames at: account2 put: 'account2'.	accountNames at: account3 put: 'account3'.	lines := self portofolioTreeOf: composedPortfolio namingAccountWith: accountNames.	self assert: 5 = lines size.	self assert: 'composedPortfolio' = (lines at: 1).	self assert: ' complexPortfolio' = (lines at: 2).	self assert: '  account1' = (lines at: 3).	self assert: '  account2' = (lines at: 4).	self assert: ' account3' = (lines at: 5).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:30'!
test29ReversePortfolioTreePrinterPrintsTheCompositeStartingFromTheLeaves	| account1 account2 account3 complexPortfolio composedPortfolio accountNames lines |	account1 := ReceptiveAccount new.	account2 := ReceptiveAccount new.	account3 := ReceptiveAccount new.	complexPortfolio := Portfolio with: account1 with: account2.	composedPortfolio := Portfolio with: complexPortfolio with: account3.	accountNames := Dictionary new.	accountNames at: composedPortfolio put: 'composedPortfolio'.	accountNames at: complexPortfolio put: 'complexPortfolio'.	accountNames at: account1 put: 'account1'.	accountNames at: account2 put: 'account2'.	accountNames at: account3 put: 'account3'.	lines := self reversePortofolioTreeOf: composedPortfolio namingAccountWith: accountNames.	self assert: 5 = lines size.	self assert: ' account3' = (lines at: 1).	self assert: '  account2' = (lines at: 2).	self assert: '  account1' = (lines at: 3).	self assert: ' complexPortfolio' = (lines at: 4).	self assert: 'composedPortfolio' = (lines at: 5).	! !


!classDefinition: #AccountTransaction category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #AccountTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!AccountTransaction methodsFor: 'evaluating' stamp: 'gs/mg 9/25/2017 20:46:09'!
updateBalance: aBalance	self subclassResponsibility ! !

!AccountTransaction methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 06:48'!
value	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransaction class' category: #'PortfolioTreePrinter-Ejercicio'!
AccountTransaction class
	instanceVariableNames: ''!

!AccountTransaction class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
register: aValue on: account	| withdraw |	withdraw := self for: aValue.	account register: withdraw.	^ withdraw! !


!classDefinition: #CertificateOfDeposit category: #'PortfolioTreePrinter-Ejercicio'!
AccountTransaction subclass: #CertificateOfDeposit
	instanceVariableNames: 'value tna numberOfDays account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!CertificateOfDeposit methodsFor: 'initialization' stamp: 'Guerson 9/27/2017 01:19'!
earnings	^ value * ((tna/360) * numberOfDays) .! !

!CertificateOfDeposit methodsFor: 'initialization' stamp: 'Guerson 9/27/2017 01:35'!
initialValue	^ value .! !

!CertificateOfDeposit methodsFor: 'initialization' stamp: 'Guerson 9/26/2017 23:10'!
initializeFor: aValue during: aNumberOfDays at: aTna	value := aValue .	numberOfDays := aNumberOfDays .	tna := aTna .! !

!CertificateOfDeposit methodsFor: 'initialization' stamp: 'gs/mg 9/27/2017 02:34:11'!
numberOfDays	^ numberOfDays .! !

!CertificateOfDeposit methodsFor: 'initialization' stamp: 'gs/mg 9/27/2017 02:34:21'!
tna	^ tna .! !

!CertificateOfDeposit methodsFor: 'initialization' stamp: 'Guerson 9/27/2017 01:32'!
updateBalance: aBalance	^ aBalance - value.! !


!CertificateOfDeposit methodsFor: 'adding' stamp: 'gs/mg 9/28/2017 14:43:44'!
askForQueryFrom: aQuery	^ aQuery askedToCertificateOfDeposit: self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CertificateOfDeposit class' category: #'PortfolioTreePrinter-Ejercicio'!
CertificateOfDeposit class
	instanceVariableNames: ''!

!CertificateOfDeposit class methodsFor: 'as yet unclassified' stamp: 'Guerson 9/26/2017 23:11'!
for: aValue during: aNumberOfDays at: aTna	^ self new initializeFor: aValue during: aNumberOfDays at: aTna .! !

!CertificateOfDeposit class methodsFor: 'as yet unclassified' stamp: 'Guerson 9/26/2017 23:11'!
register: aValue during: aNumberOfDays at: aTna on: anAccount	| certificateOfDeposit |	certificateOfDeposit := self for: aValue during: aNumberOfDays at: aTna .	anAccount register: certificateOfDeposit.	^ certificateOfDeposit! !


!classDefinition: #Deposit category: #'PortfolioTreePrinter-Ejercicio'!
AccountTransaction subclass: #Deposit
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!Deposit methodsFor: 'value' stamp: 'gs/mg 9/28/2017 14:44:01'!
askForQueryFrom: aQuery

	^ aQuery askedToDeposit: self.! !

!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value	^ value! !


!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue	value := aValue ! !

!Deposit methodsFor: 'initialization' stamp: 'gs/mg 9/25/2017 20:45:44'!
updateBalance: aBalance	^ aBalance + value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Deposit class' category: #'PortfolioTreePrinter-Ejercicio'!
Deposit class
	instanceVariableNames: ''!

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue	^ self new initializeFor: aValue ! !

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 19:41'!
register: aValue on: account	| withdraw |	withdraw := self for: aValue.	account register: withdraw.	^ withdraw! !


!classDefinition: #TransferDeposit category: #'PortfolioTreePrinter-Ejercicio'!
AccountTransaction subclass: #TransferDeposit
	instanceVariableNames: 'value transfer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!TransferDeposit methodsFor: 'evaluating' stamp: 'Guerson 9/27/2017 00:35'!
transferNet: aBalance	^ self updateBalance: aBalance .! !

!TransferDeposit methodsFor: 'evaluating' stamp: 'Guerson 9/26/2017 21:23'!
updateBalance: aBalance	^ aBalance + value.! !



!TransferDeposit methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/25/2017 21:32:09'!
value	^ value.! !


!TransferDeposit methodsFor: 'initialization' stamp: 'Guerson 9/26/2017 23:00'!
initializeFor: aValue asPartOf: aTransfer	value := aValue .	transfer := aTransfer .! !


!TransferDeposit methodsFor: 'adding' stamp: 'gs/mg 9/28/2017 14:44:20'!
askForQueryFrom: aQuery

	^ aQuery askedToTransferDeposit: self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TransferDeposit class' category: #'PortfolioTreePrinter-Ejercicio'!
TransferDeposit class
	instanceVariableNames: ''!

!TransferDeposit class methodsFor: 'instance creation' stamp: 'Guerson 9/26/2017 22:59'!
for: aValue asPartOf: aTransfer .	^ self new initializeFor: aValue asPartOf: aTransfer .! !

!TransferDeposit class methodsFor: 'instance creation' stamp: 'Guerson 9/26/2017 22:59'!
register: aValue on: account asPartOf: aTransfer	| transferDeposit |	transferDeposit := self for: aValue asPartOf: aTransfer .	account register: transferDeposit .	^ transferDeposit .! !


!classDefinition: #TransferWithdraw category: #'PortfolioTreePrinter-Ejercicio'!
AccountTransaction subclass: #TransferWithdraw
	instanceVariableNames: 'value transfer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!


!TransferWithdraw methodsFor: 'adding' stamp: 'gs/mg 9/28/2017 14:44:32'!
askForQueryFrom: aQuery

	^ aQuery askedToTransferWithdraw: self.! !


!TransferWithdraw methodsFor: 'initialization' stamp: 'Guerson 9/26/2017 22:58'!
initializeFor: aValue asPartOf: aTransfer	value := aValue .	transfer := aTransfer .! !


!TransferWithdraw methodsFor: 'evaluating' stamp: 'Guerson 9/27/2017 00:35'!
transferNet: aBalance	^ self updateBalance: aBalance .! !

!TransferWithdraw methodsFor: 'evaluating' stamp: 'Guerson 9/26/2017 21:22'!
updateBalance: aBalance	^ aBalance - value.! !


!TransferWithdraw methodsFor: 'as yet unclassified' stamp: 'gs/mg 9/25/2017 21:32:20'!
value	^ value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TransferWithdraw class' category: #'PortfolioTreePrinter-Ejercicio'!
TransferWithdraw class
	instanceVariableNames: ''!

!TransferWithdraw class methodsFor: 'instance creation' stamp: 'Guerson 9/26/2017 22:57'!
for: aValue asPartOf: aTransfer .	^ self new initializeFor: aValue asPartOf: aTransfer .! !

!TransferWithdraw class methodsFor: 'instance creation' stamp: 'Guerson 9/26/2017 22:56'!
register: aValue on: account asPartOf: aTransfer	| transferWithdraw |	transferWithdraw := self for: aValue asPartOf: aTransfer .	account register: transferWithdraw .	^ transferWithdraw .! !


!classDefinition: #Withdraw category: #'PortfolioTreePrinter-Ejercicio'!
AccountTransaction subclass: #Withdraw
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!Withdraw methodsFor: 'value' stamp: 'HernanWilkinson 7/14/2011 05:54'!
value	^ value ! !


!Withdraw methodsFor: 'initialization' stamp: 'gs/mg 9/28/2017 14:44:40'!
askForQueryFrom: aQuery

	^ aQuery askedToWithdraw: self.! !

!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue	value := aValue ! !

!Withdraw methodsFor: 'initialization' stamp: 'gs/mg 9/25/2017 20:45:55'!
updateBalance: aBalance	^ aBalance - value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Withdraw class' category: #'PortfolioTreePrinter-Ejercicio'!
Withdraw class
	instanceVariableNames: ''!

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue	^ self new initializeFor: aValue ! !

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:32'!
register: aValue on: account	| withdraw |	withdraw := self for: aValue.	account register: withdraw.	^ withdraw! !


!classDefinition: #InvestmentEarnings category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #InvestmentEarnings
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!InvestmentEarnings methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:56:18'!
askedToCertificateOfDeposit: aCertificateOfDeposit

	^ aCertificateOfDeposit earnings .! !

!InvestmentEarnings methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:56:40'!
askedToDeposit: aDeposit

	^ 0.! !

!InvestmentEarnings methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:56:49'!
askedToTransferDeposit: aTransferDeposit

	^ 0.! !

!InvestmentEarnings methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:57:01'!
askedToTransferWithdraw: aTransferWithdraw

	^ 0.! !

!InvestmentEarnings methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:57:14'!
askedToWithdraw: aWithdraw

	^ 0.! !

!InvestmentEarnings methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:58:23'!
compute	| sumEarnings |	sumEarnings := 0 .	account transactions do: [ :aTransaction | sumEarnings := sumEarnings + (aTransaction askForQueryFrom: self)] .	^ sumEarnings .! !


!InvestmentEarnings methodsFor: 'instance creation' stamp: 'Guerson 9/28/2017 00:56'!
initializeFor: aReceptiveAccount	account := aReceptiveAccount .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvestmentEarnings class' category: #'PortfolioTreePrinter-Ejercicio'!
InvestmentEarnings class
	instanceVariableNames: ''!

!InvestmentEarnings class methodsFor: 'instance creation' stamp: 'Guerson 9/28/2017 00:56'!
for: aReceptiveAccount	^ self new initializeFor: aReceptiveAccount .! !


!classDefinition: #InvestmentNet category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #InvestmentNet
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!InvestmentNet methodsFor: 'instance creation' stamp: 'Guerson 9/28/2017 00:47'!
initializeFor: aReceptiveAccount	account := aReceptiveAccount .! !


!InvestmentNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:50:08'!
askedToCertificateOfDeposit: aCertificateOfDeposit

	^ aCertificateOfDeposit initialValue .! !

!InvestmentNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:51:10'!
askedToDeposit: aDeposit

	^ 0.! !

!InvestmentNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:51:42'!
askedToTransferDeposit: aTransferDeposit

	^ 0.! !

!InvestmentNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:51:31'!
askedToTransferWithdraw: aTransferWithdraw

	^ 0.! !

!InvestmentNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:51:22'!
askedToWithdraw: aWithdraw

	^ 0.! !

!InvestmentNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:53:36'!
compute	| sumAmount |	sumAmount := 0 .	account transactions do: [ :aTransaction | sumAmount := sumAmount + (aTransaction askForQueryFrom: self) ] .	^ sumAmount .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvestmentNet class' category: #'PortfolioTreePrinter-Ejercicio'!
InvestmentNet class
	instanceVariableNames: ''!

!InvestmentNet class methodsFor: 'instance creation' stamp: 'Guerson 9/28/2017 00:47'!
for: aReceptiveAccount	^ self new initializeFor: aReceptiveAccount .! !


!classDefinition: #SummarizingAccount category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #SummarizingAccount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!SummarizingAccount methodsFor: 'transactions' stamp: 'Guerson 9/28/2017 00:42'!
compute	self subclassResponsibility ! !

!SummarizingAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:35'!
transactions	self subclassResponsibility ! !


!SummarizingAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:34'!
manages: anAccount	self subclassResponsibility ! !

!SummarizingAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:34'!
registers: aTransaction	self subclassResponsibility ! !


!classDefinition: #Portfolio category: #'PortfolioTreePrinter-Ejercicio'!
SummarizingAccount subclass: #Portfolio
	instanceVariableNames: 'accounts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!Portfolio methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 19:19'!
initializeWithAll: aCollectionOfAccounts	accounts := aCollectionOfAccounts   ! !


!Portfolio methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 19:22'!
manages: anAccount	^ self = anAccount  or: [ accounts anySatisfy: [ :managedAccount | managedAccount manages: anAccount  ]  ]! !

!Portfolio methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 19:20'!
registers: aTransaction	^ accounts anySatisfy: [ :anAccount | anAccount registers: aTransaction ]  ! !


!Portfolio methodsFor: 'balance' stamp: 'Guerson 9/24/2017 22:21'!
initializeFor: accountsCollection	accountsCollection		detect: [				:anAccount | (accountsCollection select: [ :otherAccount | anAccount manages: otherAccount ] ) size > 1.			 ]		ifFound: [ self error: Portfolio accountAlreadyManagedErrorMessage ].	accounts := accountsCollection.! !


!Portfolio methodsFor: 'transactions' stamp: 'Guerson 9/28/2017 00:42'!
compute	^ accounts sum: [ :account | account compute ]! !

!Portfolio methodsFor: 'transactions' stamp: 'HAW 9/25/2017 19:40:20'!
transactions	^ accounts		inject: OrderedCollection new		into: [ :transactions :account | transactions addAll: account transactions. transactions ]	! !

!Portfolio methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 19:27'!
transactionsOf: anAccount	^ (self manages: anAccount)		ifTrue: [ anAccount transactions ]		ifFalse: [ self error: self class accountNotManagedMessageDescription]	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Portfolio class' category: #'PortfolioTreePrinter-Ejercicio'!
Portfolio class
	instanceVariableNames: ''!

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:22'!
check: sourceAccount doesNotManagaAnyOf: aCollectionOfAccounts	^ aCollectionOfAccounts do: [ :targetAccount |			(sourceAccount = targetAccount) not ifTrue: [				(sourceAccount manages: targetAccount) ifTrue: [ self error: self accountAlreadyManagedErrorMessage ] ] ]! !

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:21'!
checkAccountsAreUnique: aCollectionOfAccounts	aCollectionOfAccounts asSet size = aCollectionOfAccounts size		ifFalse: [ self error: self accountAlreadyManagedErrorMessage ]! !

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:21'!
checkCreationPreconditions: aCollectionOfAccounts	self checkAccountsAreUnique: aCollectionOfAccounts.	self checkNoCircularReferencesIn: aCollectionOfAccounts! !

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:22'!
checkNoCircularReferencesIn: aCollectionOfAccounts	aCollectionOfAccounts do: [ :sourceAccount | self check: sourceAccount doesNotManagaAnyOf: aCollectionOfAccounts ]! !


!Portfolio class methodsFor: 'error messages' stamp: 'HernanWilkinson 7/13/2011 19:28'!
accountAlreadyManagedErrorMessage	^ 'Account already managed'! !

!Portfolio class methodsFor: 'error messages' stamp: 'HernanWilkinson 7/13/2011 19:27'!
accountNotManagedMessageDescription	^ 'Account not managed'! !


!Portfolio class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:48'!
with: anAccount1 with: anAccount2	^ self withAll: (Array with: anAccount1 with: anAccount2 )! !

!Portfolio class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 19:40'!
withAll: aCollectionOfAccounts	aCollectionOfAccounts asSet size = aCollectionOfAccounts size ifFalse: [ self error: self accountAlreadyManagedErrorMessage  ].	aCollectionOfAccounts do: [ :sourceAccount |		aCollectionOfAccounts do: [ :targetAccount |			(sourceAccount = targetAccount) not ifTrue: [				(sourceAccount manages: targetAccount) ifTrue: [ self error: self accountAlreadyManagedErrorMessage ]]]].	^self new initializeWithAll: aCollectionOfAccounts ! !


!classDefinition: #ReceptiveAccount category: #'PortfolioTreePrinter-Ejercicio'!
SummarizingAccount subclass: #ReceptiveAccount
	instanceVariableNames: 'transactions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!ReceptiveAccount methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:35'!
initialize	super initialize.	transactions := OrderedCollection new.! !


!ReceptiveAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:37'!
manages: anAccount	^ self = anAccount! !

!ReceptiveAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:37'!
registers: aTtransaction	^ transactions includes: aTtransaction! !


!ReceptiveAccount methodsFor: 'transactions' stamp: 'Guerson 9/28/2017 00:42'!
compute	^ transactions inject: 0 into: [ :balance :transaction | transaction updateBalance: balance ]! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
register: aTransaction	transactions add: aTransaction! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
transactions	^ transactions copy! !


!classDefinition: #SummaryLines category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #SummaryLines
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!SummaryLines methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 15:09:01'!
askedToCertificateOfDeposit: aCertificateOfDeposit

	^'Plazo fijo por ', (aCertificateOfDeposit initialValue) asString , ' durante ', (aCertificateOfDeposit numberOfDays) asString , ' dias a una tna de ', ((aCertificateOfDeposit tna) * 100) asString , '%'.! !

!SummaryLines methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 15:17:24'!
askedToDeposit: aDeposit

	 ^'Deposito por ', (aDeposit value) asString.! !

!SummaryLines methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 15:17:15'!
askedToTransferDeposit: aTransferDeposit

	^'Transferencia por ', (aTransferDeposit value) asString.! !

!SummaryLines methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 15:17:05'!
askedToTransferWithdraw: aTransferWithdraw

	^'Transferencia por -', (aTransferWithdraw value) asString.! !

!SummaryLines methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 15:18:24'!
askedToWithdraw: aWithdraw

	^'Extraccion por ', (aWithdraw value) asString .! !

!SummaryLines methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 15:12:11'!
compute	| lines |
	lines := OrderedCollection new.
	(account transactions) do: [ :aTransaction | lines add: (aTransaction askForQueryFrom: self)].
	^ lines.! !


!SummaryLines methodsFor: 'instance creation' stamp: 'gs/mg 9/28/2017 15:06:24'!
initializeFor: aReceptiveAccount	account := aReceptiveAccount .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SummaryLines class' category: #'PortfolioTreePrinter-Ejercicio'!
SummaryLines class
	instanceVariableNames: ''!

!SummaryLines class methodsFor: 'instance creation' stamp: 'gs/mg 9/28/2017 15:06:24'!
for: aReceptiveAccount	^ self new initializeFor: aReceptiveAccount .! !


!classDefinition: #Transfer category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #Transfer
	instanceVariableNames: 'value sourceAccount targetAccount transferWithdrawLeg transferDepositLeg'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!Transfer methodsFor: 'initialization' stamp: 'Guerson 9/26/2017 23:34'!
initializeWith: aTransferWithdrawLeg and: aTransferDepositLeg	transferWithdrawLeg := aTransferWithdrawLeg .	transferDepositLeg := aTransferDepositLeg .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Transfer class' category: #'PortfolioTreePrinter-Ejercicio'!
Transfer class
	instanceVariableNames: ''!

!Transfer class methodsFor: 'as yet unclassified' stamp: 'Guerson 9/26/2017 23:35'!
register: anAmount from: aSourceAccount to: aDestinationAccount	| transfer transferWithdrawLeg transferDepositLeg |	transfer := self new .	transferWithdrawLeg := TransferWithdraw register: anAmount on: aSourceAccount asPartOf: transfer .	transferDepositLeg := TransferDeposit register: anAmount on: aDestinationAccount asPartOf: transfer .	transfer initializeWith: transferWithdrawLeg and: transferDepositLeg .	^ transfer .! !


!classDefinition: #TransferNet category: #'PortfolioTreePrinter-Ejercicio'!
Object subclass: #TransferNet
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTreePrinter-Ejercicio'!

!TransferNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:41:32'!
askedToCertificateOfDeposit: aCertificateOfDeposit

	^ 0.! !

!TransferNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:40:57'!
askedToDeposit: aDeposit

	^ 0.! !

!TransferNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:40:21'!
askedToTransferDeposit: aTransferDeposit

	^ aTransferDeposit value.! !

!TransferNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:45:24'!
askedToTransferWithdraw: aTransferWithdraw

	^ -1*(aTransferWithdraw value).! !

!TransferNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:40:46'!
askedToWithdraw: aWithdraw

	^ 0.! !

!TransferNet methodsFor: 'transactions' stamp: 'gs/mg 9/28/2017 14:34:17'!
compute	| sumBalance |	sumBalance := 0 .	account transactions do: [ :aTransaction | sumBalance := sumBalance + (aTransaction askForQueryFrom: self) ] .	^ sumBalance .! !


!TransferNet methodsFor: 'instance creation' stamp: 'Guerson 9/28/2017 00:41'!
initializeFor: aReceptiveAccount	account := aReceptiveAccount .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TransferNet class' category: #'PortfolioTreePrinter-Ejercicio'!
TransferNet class
	instanceVariableNames: ''!

!TransferNet class methodsFor: 'instance creation' stamp: 'Guerson 9/27/2017 01:01'!
for: aReceptiveAccount	^ self new initializeFor: aReceptiveAccount .! !
