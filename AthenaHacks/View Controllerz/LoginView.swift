//
//  LoginView.swift
//  AthenaHacks2020
//
//  Created by Sandra Gaurgious on 3/7/20.
//  Copyright © 2020 UCI HAGS. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import Foundation

class LoginView: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LoginBotton: UIButton!
    
    @IBOutlet weak var SignupBotton: UIButton!
    
    @IBOutlet weak var GoogleButton: UIButton!
    
    
    @IBOutlet weak var TextbookTraderLabel: UILabel!
    
    @IBOutlet weak var OrSignLabel: UILabel!
    
    @IBOutlet weak var BookImage: UIImageView!
    
    
    func validateFields() -> String?{
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)==""{
            return "Please fill in all fields"

        }
        
        return nil
    }
    
    @IBAction func LoginTapped( for segue: UIStoryboardSegue, sender: Any){
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        print('NEXT PAGEE')

        
        Auth.auth().signIn(withEmail: email, password: password) {(result, error) in
            
            
            let SellerView = self.storyboard?.instantiateViewController(withIdentifier: "SellerView") as! SellerView
            self.navigationController?.pushViewController(SellerView, animated: true)
                
            }
        }
        
    }
    
    
