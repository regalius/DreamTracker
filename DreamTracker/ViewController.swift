//
//  ViewController.swift
//  DreamTracker
//
//  Created by Nakama on 10/19/18.
//  Copyright © 2018 Nakama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func labelTapGesture(_ sender: Any) {
        print("Label clicked")
    }
    @IBAction func submit(_ sender: Any) {
        guard let username = userTextField.text else {
            print("No Username")
            return
        }
        guard let password = passwordTextField.text else {
            print("No password")
            return
        }
        if(!(userTextField.text?.isEmpty ?? true) &&
            !(passwordTextField.text?.isEmpty ?? true)) {
            titleLabel.text = "Hello \(username) your password is \(password)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let viewTest = UIView(frame: CGRect(x: 100, y: 0, width: 100, height: 100))
//        viewTest.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//        self.view.addSubview(viewTest)
        titleLabel.text = "Success"
    }
}

