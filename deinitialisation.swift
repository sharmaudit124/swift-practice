class MyClass {
    init() {
        print("Initializing MyClass")
    }
    
    deinit {
        print("Deallocating MyClass")
    }
}

var myInstance: MyClass? = MyClass()

myInstance = nil

//-------------------Dinitialisation---------------------

class Bank{
   static var amount = 0

    static func deposit(amount : Int){
        self.amount += amount;
    }

    static func withdraw(amount: Int) -> Bool {
        guard amount <= self.amount else {
            print("Insufficient balance")
            return false 
        }
        self.amount -= amount
        return true
    }
}

class Account {
    var balance: Int
    
    init(initialBalance: Int) {
        balance = initialBalance
        Bank.deposit(amount: initialBalance)
    }
    
    deinit {
        Bank.withdraw(amount: balance)
    }
}

var account1: Account? = Account(initialBalance: 100)
var account2: Account? = Account(initialBalance: 200)

account1 = nil
account2 = nil

print("Total balance in bank: \(Bank.amount)")