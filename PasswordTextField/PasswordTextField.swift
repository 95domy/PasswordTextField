//
//  PasswordTextField.swift
//  PasswordTextField
//
//  Created by Chris Jimenez on 2/9/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

//  A custom TextField with a switchable icon which shows or hides the password
@IBDesignable public class PasswordTextField: UITextField {
    
    
    public override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setup()
        
    }
    
    
    public required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        
        setup()
        
    }
    
    func setup()
    {
        
        self.secureTextEntry = true
    }
    
    
    
    /// retuns if the textfield is secure or not
    public var isSecure: Bool{
        get{
            return secureTextEntry
        }
    }
    
    /**
     Toggle the secure text view
     */
    public func toggleSecureText()
    {
        
        self.secureText = !isSecure
        
        /// Kind of ugly hack to make the text refresh after the toggle. The size of the secure fonts are different than the normal ones and it shows trailing white space
        let tempText = self.text;
        self.text = " ";
        self.text = tempText;
        
    }
    
    
}
