#
# Developed by 10Pines SRL
# License:
# This work is licensed under the
# Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
# To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/
# or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View,
# California, 94041, USA.
#
import unittest
import time

class CustomerBook:

    CUSTOMER_NAME_CAN_NOT_BE_EMPTY = 'Customer name can not be empty'
    CUSTOMER_ALREADY_EXIST = 'Customer already exists'
    INVALID_CUSTOMER_NAME = 'Invalid customer name'

    def __init__(self):
        self.customerNames = set()

    def addCustomerNamed(self,name):
        #El motivo por el cual se hacen estas verificaciones y se levanta esta excepcion es por motivos del
        #ejercicio - Hernan.
        if not name:
            raise ValueError(self.__class__.CUSTOMER_NAME_CAN_NOT_BE_EMPTY)
        if self.includesCustomerNamed(name):
            raise ValueError(self.__class__.CUSTOMER_ALREADY_EXIST)

        self.customerNames.add(name)

    def isEmpty(self):
        return self.numberOfCustomers()==0

    def numberOfCustomers(self):
        return len(self.customerNames)

    def includesCustomerNamed(self,name):
        return name in self.customerNames

    def removeCustomerNamed(self,name):
        #Esta validacion mucho sentido no tiene, pero esta puesta por motivos del ejericion - Hernan
        if not self.includesCustomerNamed(name):
            raise KeyError(self.__class__.INVALID_CUSTOMER_NAME)

        self.customerNames.remove(name)

class IdionTest(unittest.TestCase):
    def testAddingCustomerShouldNotTakeMoreThan50Milliseconds(self):

        # timeBeforeRunning = time.time()
        # customerBook.addCustomerNamed('John Lennon')
        # timeAfterRunning = time.time()

        # self.assertTrue((timeAfterRunning - timeBeforeRunning) * 1000 < 50)
        customerBook = CustomerBook()

        def addCustomerOperation():
            customerBook.addCustomerNamed('John Lennon')

        self.assertOperationTimeLessThan(addCustomerOperation, 50)

    def testRemovingCustomerShouldNotTakeMoreThan100Milliseconds(self):
        # timeBeforeRunning = time.time()
        # customerBook.removeCustomerNamed(paulMcCartney)
        # timeAfterRunning = time.time()

        # self.assertTrue((timeAfterRunning - timeBeforeRunning) * 1000 < 100)
        customerBook = CustomerBook()
        paulMcCartney = 'Paul McCartney'

        customerBook.addCustomerNamed(paulMcCartney)
        def removeCustomerOperation():
            customerBook.removeCustomerNamed(paulMcCartney)

        self.assertOperationTimeLessThan(removeCustomerOperation, 100)


    def assertOperationTimeLessThan(self, operationToBeMeasured, limitTime):
        operationTime = self.measureOperationTime(operationToBeMeasured)
        self.assertTimeLessThan(operationTime, limitTime)

    def assertTimeLessThan(self, timeToTest, limitTime):
        self.assertTrue(timeToTest < limitTime)

    def measureOperationTime(self, operationToBeMeasured):
        timeBeforeRunning = time.time()
        operationToBeMeasured()
        timeAfterRunning = time.time()
        return (timeAfterRunning - timeBeforeRunning) * 1000


    def testCanNotAddACustomerWithEmptyName(self):
        #try:
        #    customerBook.addCustomerNamed('')
        #    self.fail()
        #except ValueError as exception:
        #    self.assertEquals(exception.message,CustomerBook.CUSTOMER_NAME_CAN_NOT_BE_EMPTY)
        #    self.assertTrue(customerBook.isEmpty())
        customerBook = CustomerBook()

        def addEmptyCustomer():
            customerBook.addCustomerNamed('')

        def assertEmptyBook():
            self.assertTrue(customerBook.isEmpty())

        self.tryCatch(addEmptyCustomer, ValueError, CustomerBook.CUSTOMER_NAME_CAN_NOT_BE_EMPTY, assertEmptyBook)


    def testCanNotRemoveNotAddedCustomer(self):
        #try:
        #    customerBook.removeCustomerNamed('John Lennon')
        #    self.fail()
        #except KeyError as exception:
        #    self.assertEquals(exception.message,CustomerBook.INVALID_CUSTOMER_NAME)
        #    self.assertTrue(customerBook.numberOfCustomers()==1)
        #    self.assertTrue(customerBook.includesCustomerNamed('Paul McCartney'))
        customerBook = CustomerBook()
        customerBook.addCustomerNamed('Paul McCartney')

        def removeCustomerJohn():
            customerBook.removeCustomerNamed('John Lennon')

        def assertOneCustomerPaul():
            self.assertTrue(customerBook.numberOfCustomers()==1)
            self.assertTrue(customerBook.includesCustomerNamed('Paul McCartney'))

        self.tryCatch(removeCustomerJohn, KeyError, CustomerBook.INVALID_CUSTOMER_NAME, assertOneCustomerPaul)


    def tryCatch(self, tryBlock, anError, aMessage, catchBlock):
        try:
            tryBlock()
            fail()
        except anError as e:
            self.assertEquals(e[0], aMessage)
            catchBlock()
        else:
            raise e


if __name__ == "__main__":
    unittest.main()


