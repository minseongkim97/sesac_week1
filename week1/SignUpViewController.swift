//
//  SignUpViewController.swift
//  week1
//
//  Created by MIN SEONG KIM on 2022/07/11.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var jackflixTextField: [UITextField]!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var couponCodeTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var moreInfoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTextField()
        designSwitch()
        signUpButton.layer.cornerRadius = 8
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        if emailTextField.text == nil || passwordTextField.text == nil {
            print("불가능")
            return
        }
        
        if Int(couponCodeTextField.text ?? "") == nil {
            print("불가능")
            return
        }
        
        print("가능")
    }
    
    func designTextField() {
        for textfield in jackflixTextField {
            textfield.textColor = .white
            textfield.borderStyle = .roundedRect
            // 가운데 정렬
            textfield.textAlignment = .center

            // 색상 지정
            textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

        }
    }
    
    func designSwitch() {
        moreInfoSwitch.backgroundColor = .blue
        moreInfoSwitch.layer.cornerRadius = 16
    }
}

