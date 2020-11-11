//
//  LoginViewController.swift
//  fourthAssignment
//
//  Created by 이정엽 on 2020/11/10.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var standard: UIStackView!
    @IBOutlet var partTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    
    var verification: Bool = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        registerForKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        unregisterForKeyboardNotifications()
    }
    
    func registerForKeyboardNotifications(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object:nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func unregisterForKeyboardNotifications(){
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification,object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification: Notification){
        if verification {return}
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
            let keyboardRect = keyboardFrame.cgRectValue
            let keyboardY = keyboardRect.origin.y
            let space = self.standard.frame.origin.y
            self.view.frame.origin.y -= 150
            verification = true
        }
    }

    @objc func keyboardWillHide(_ notification: Notification){
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
            let keyboardRect = keyboardFrame.cgRectValue
            let keyboardY = keyboardRect.origin.y
            let space = self.standard.frame.origin.y
            self.view.frame.origin.y += 150
            verification = false
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        partTextField.delegate = self
        nameTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerBtn(_ sender: UIButton) {
        let vc = self.presentingViewController
        guard let dvc = vc as? CustomTabBarController else {
            return
                }
        guard let avc = dvc.viewControllers?[0] as? AccountViewController else{
            return
        }
        
        avc.name = partTextField.text
        avc.part = nameTextField.text
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}

extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
