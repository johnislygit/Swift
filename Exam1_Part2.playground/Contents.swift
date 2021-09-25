/*John Ly
 ISDS 411
 Exam 1_part2*/

//Number 1
//Part A
func GetLetterGrade(_ Testscore: Int) -> String { // I have this return as string but am unsure if returning as character is more efficient.
    switch Testscore {
    case 90...100:
        return "A"
    case 80...89:
        return "B"
    case 70...79:
        return "C"
    case 60...69:
        return "D"
    default:
        return "F"
    }
}
//Part B
func CalculateTotal(_ Testscore: [Int]) -> Int {
    var total: Int = 0
    for score in Testscore {
        total += score
    }
    return total
}
//Part C
var testScores: [Int] = [100,75,80,95,85]
//Part D
let totalScore = CalculateTotal(testScores)
var avgScore = totalScore/testScores.count
print("The total score is \(totalScore), and the average score is \(avgScore).")
//Part E
for score in testScores {
    print(score,GetLetterGrade(score))
}

//Number 2
//Part A
class Account {
    //Balance and Account Number Variables
    var accountBalance: Double
    var accountNumber: Int
    //Initializer for accountBalance and accountNumber
    init(accountBalance: Double, accountNumber:Int ) {
        self.accountBalance = accountBalance
        self.accountNumber = accountNumber
    }
    //Part B
    func Deposit(_ depositAmount: Double) {
        accountBalance += depositAmount
    }
    //Part C
    func Withdraw(_ withdrawAmount: Double) {
        if withdrawAmount > accountBalance {
            print("Withdraw amount exceeded the account balance.")
        }
        else {
            accountBalance -= withdrawAmount
        }
    }
    //Part D
    func AccountInfo() {
        print("The account number is \(accountNumber), and the current balance is $\(accountBalance).")
    }
}
//Part E
class SavingsAccount: Account {
    //Variable for Interest Rate on Savings Account
    var interestRate: Double
    //Initializer for SavingsAccount
    init(accountBalance: Double, accountNumber: Int, interestRate:Double) {
        self.interestRate = interestRate
        super.init(accountBalance: accountBalance, accountNumber: accountNumber)
    }
    //Part F
    override func AccountInfo() {
        print("The account number is \(accountNumber), and the current balance is $\(accountBalance). The interest earned on this account is $\(accountBalance * interestRate).")
    }
}

//Part G
var bank = Account(accountBalance: 200.00, accountNumber: 14)
bank.AccountInfo()
//Part H
bank.Deposit(200)
bank.AccountInfo()
bank.Withdraw(500)
bank.AccountInfo()
//Part I
var savings = SavingsAccount(accountBalance: 200, accountNumber: 12, interestRate: 0.01)
savings.AccountInfo()
//Part J
savings.Deposit(200)
savings.AccountInfo()
