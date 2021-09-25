func admissionDecision(_ GPA: Double, admissionScore: Int) -> String {
    let admission: String
    if (GPA >= 3.0 && admissionScore >= 60) {
        admission = "Accept"
    }
    else if (GPA < 3.0 && admissionScore >= 80) {
        admission = "Accept"
    }
    else {
        admission = "Reject"
    }
    return admission
}

func fineForOverdueBooks (_ numberOfBooks: Int, daysOverDue: Int) -> Double  {
    var fine: Double = 0
    if daysOverDue <= 7 {
        fine = (Double(numberOfBooks) * 0.5) * Double(daysOverDue)
    }
    else if daysOverDue > 7
    {
        //fine is calculated by first 7 days at $0.50 per book
        fine = (Double(numberOfBooks) * 0.5) * 7
        //any additional day is now calculated at $1 per book
        fine = fine + ((Double(numberOfBooks) * 1) * (Double(daysOverDue) - 7))
    }
    
    return fine
}


print(admissionDecision(3.1, admissionScore: 61))
print(admissionDecision(2.5, admissionScore: 80))
print(admissionDecision(2.5, admissionScore: 75))

print(fineForOverdueBooks(2, daysOverDue: 4))
print(fineForOverdueBooks(5, daysOverDue: 7))
print(fineForOverdueBooks(1, daysOverDue: 8))
