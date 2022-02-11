//
//  RegisterViewController.swift
//  ChapApp
//
//  Created by Григорий Душин on 07.02.2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    @IBAction func registerPressed(_ sender: UIButton) {
      
        if let email = emailTextField.text ,
          let password = passwordTextField.text {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
                let alert = UIAlertController(title: .none, message: e.localizedDescription, preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
            }else{
                //Navigate to the ChatVC
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
        }
    }
    
}
}
