class SalesPerson {
    //First and Last Name of Sales Person
    var fname: String
    var lname: String
    //Initializer for SalesPerson
    init(fname: String, lname: String) {
        self.fname = fname
        self.lname = lname
    }
    //Empty Function
    func SaleSpeech() {
        
    }
    //Empty Function
    func MakeSale() {
        
    }
}

class GirlScout: SalesPerson {
    //Number of Girl Scout cookie boxes sold
    var numBox: Int
    //Initializer for Girl Scout
    init(fname: String, lname: String, numBox: Int) {
        self.numBox = numBox
        super.init(fname: fname, lname: lname)
    }
    //Override SaleSpeech to match context for Girl Scout cookies.
    override func SaleSpeech() {
        print("\(fname) \(lname) has sold \(numBox) boxes of Girl Scout cookies.")
    }
    //Did not need to override func since it is taking different arguments. Would numbox need to be self.numbox or is this fine?
     func MakeSale(_ boxSold: Int) {
        numBox += boxSold
    }
}

class RealEstate: SalesPerson {
    //Total value of sales as a Real Estate Agent
    var totalValue: Double
    //Total amount of commision made as a Real Estate Agent
    var totalCommission: Double
    //Agent's Commission Rate
    var commissionRate: Double
    //Initializer for Real Estate
    init(fname: String, lname: String, totalValue: Double, totalCommission: Double, commissionRate: Double) {
        self.totalValue = totalValue
        self.totalCommission = totalCommission
        self.commissionRate = commissionRate
        super.init(fname: fname, lname: lname)
    }
    //Override SaleSpeech to match context for Real Estate Agent
    override func SaleSpeech() {
        print("\(fname) \(lname) has sold a total value of $\(totalValue) with the total commission of $\(totalCommission) and their commission rate is \(commissionRate)%. ")
    }
    //Did not need to override func since it is taking different arguments.
    func MakeSale(_ houseValue: Double) {
        //Declared to hold the value of commission before it's added to the total.
        let tempCommission: Double = houseValue * (commissionRate/100)
        //Adds the value of house sold to the total amount of all houses sold.
        totalValue += houseValue
        //Adds the value of current commission of house to the total amount of all commission gained.
        totalCommission += tempCommission
    }
}

var girlscout = GirlScout(fname: "Judy", lname: "Nguyen", numBox: 10)
girlscout.SaleSpeech()
girlscout.MakeSale(5)
girlscout.SaleSpeech()
var realestate = RealEstate(fname: "John", lname: "Ly", totalValue: 0, totalCommission: 0, commissionRate: 5)
realestate.SaleSpeech()
realestate.MakeSale(300000)
realestate.SaleSpeech()
