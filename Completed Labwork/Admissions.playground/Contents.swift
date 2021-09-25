/*Create constant/variable (decide whether this should be a constant or a variable) to hold a high school GPA value, and assign it with a reasonable GPA number. Create constant/variable (decide whether this should be a constant or variable) to hold an admission test score, and assign it with a score between 0 to 100. Please the message "Accept" if the student meets either of the following requirement, print "Reject" if the student doesn't meet either of the criteria:

A GPA of 3.0 or higher, and an admission test score of at least 60
A GPA of less than 3.0, and an admission test score of at least 80*/

let GPA : Double = 3.1
var AdmissionScore : Int = 65

if (GPA >= 3.0 && AdmissionScore >= 60) {
    print("Accept")
}
else if (GPA < 3.0 && AdmissionScore >= 80) {
    print("Accept")
}
else {
    print("Reject")
}
