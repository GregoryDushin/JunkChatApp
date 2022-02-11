//
//  ViewController.swift
//  ChapApp
//
//  Created by Григорий Душин on 06.02.2022.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear (_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       titleLabel.text = K.appName
        
    }


}

