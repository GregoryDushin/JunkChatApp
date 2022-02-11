//
//  LoginViewController.swift
//  ChapApp
//
//  Created by Григорий Душин on 07.02.2022.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: Any) {
        if let email = emailTextField.text ,let password = passwordTextField.text {
            
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
            if let e = error {
                print(e.localizedDescription)
                let alert = UIAlertController(title: .none, message: e.localizedDescription, preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
            }else{
                //Navigate to the ChatVC
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
          
        }
    }
}
}
}
