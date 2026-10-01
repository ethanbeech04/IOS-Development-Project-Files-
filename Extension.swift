
    extension Collection {
        var isNotEmpty: Bool {
            !self.isEmpty
        }
    }
    
    extension String {
        var isValidEmail: Bool {
            let emailPattern = "^\\S+\\.\\S+$"
            return self.range(of: emailPattern, options: .regularExpression) != nil
        }
        
        
}
