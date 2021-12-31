import UIKit


extension Date {
    func day() -> String {
        self.formatter(format: "dd")
    }
    
    func month() -> String {
        self.formatter(format: "MM")
    }
    
    func year() -> String {
        self.formatter(format: "yyyy")
    }
    
    func dateAsPrettyString() -> String {
        self.formatter(format: "dd<>MM<>yyyy")
    }
    
    private func formatter(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}


let date: Date = Date()
date.day()
date.month()
date.year()
date.dateAsPrettyString()
