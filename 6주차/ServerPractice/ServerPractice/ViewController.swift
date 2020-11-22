//
//  ViewController.swift
//  ServerPractice
//
//  Created by 이정엽 on 2020/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func simpleAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: title, style: .default)
        alert.addAction(okAction)
        present(alert,animated: true)
        
        
    }
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let emailText = emailTextField.text, let passwordText = passwordTextField.text else{
            return
        }
        
        AuthService.shared.signIn(email: emailText, password: passwordText) {
            (NetworkResult) -> (Void) in
            switch NetworkResult{
            case .success(let data):
                if let signInData = data as? SignInData{
                    self.simpleAlert(title:"로그인 성공", message: "\(signInData.userName)님 로그인 성공!")
                    UserDefaults.standard.set(signInData.userName, forKey: "userName")
                }
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "로그인 실패", message: message)
                }
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
        
    }
    @IBAction func signupBtn(_ sender: Any) {
        let signupSB = UIStoryboard(name:"SignUpSB", bundle: nil)
        
        if let dvc = signupSB.instantiateViewController(identifier: "signupVC") as? signupVC{
            dvc.modalPresentationStyle = .fullScreen
            self.present(dvc, animated: true, completion: nil)
        }
    }
}

