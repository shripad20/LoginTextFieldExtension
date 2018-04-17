//
//  TextFieldExtension.swift
//  XMLParsingDemo
//
//  Created by Shripad Chidrawar on 17/04/18.
//  Copyright © 2018 Cybage. All rights reserved.
//

import UIKit

extension UITextField {
    
    func addBorder(of borderWidth: CGFloat, borderColor: UIColor, cornerRadius: CGFloat) {
        
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.masksToBounds = true
        
    }
    
    func setBottomBorder(bottomBorderColor: UIColor)  {
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1)
        bottomLine.backgroundColor = bottomBorderColor.cgColor // background color
        self.borderStyle = UITextBorderStyle.none // border style
        self.layer.addSublayer(bottomLine)
    }
    
    /* - In case when username must have 8-15 characters,
       - Must start with a letter, can include letters, numbers _ or -
    */
    func isValidUsername() -> Bool {
        
        let username: String = self.text!
        if username.count > 7 && username.count < 16{
            let regex =  "^[a-z]([a-z0-9]*[-_][a-z0-9][a-z0-9]*)$"
            
            let usernameTest = NSPredicate(format: "SELF MATCHES %@", regex)
            return usernameTest.evaluate(with: username)
        }else{
            return false
            
        }
    }
    
    /*
     In case Password has below regex validation criteria:
     
     ^                         Start anchor
     (?=.*[A-Z].*[A-Z])        Ensure string has one uppercase letter.
     (?=.*[!@#$&*])            Ensure string has one special case letter.
     (?=.*[0-9])               Ensure string has one digit.
     (?=.*[a-z].*[a-z].*[a-z]) Ensure string has one lowercase letter.
     .{8}                      Ensure string is of length 8.
     $                         End anchor.
 
     */
    func isValidPassword() -> Bool {
        
        let password: String = self.text!
        if password.count > 7 && password.count < 16{
            let regex =  "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8}$"
            
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", regex)
            return passwordTest.evaluate(with: password)
        }else{
            return false
            
        }
    }
    
    // validate an email for the right format
    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
    
}
