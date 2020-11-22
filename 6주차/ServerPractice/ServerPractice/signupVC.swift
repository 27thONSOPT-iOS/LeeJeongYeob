//
//  signupVC.swift
//  ServerPractice
//
//  Created by 이정엽 on 2020/11/22.
//

import UIKit

class signupVC: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var emailTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func simpleAlert(title:String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: title, style: .default, handler: {(action) in self.dismiss(animated: true, completion: nil)})
        alert.addAction(okAction)
        present(alert,animated:true)
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        guard let emailText = emailTF.text, let usernameText = usernameTF.text, let passwordText = passwordTF.text else{
            return
        }
        
        AuthService.shared.signUp(email: emailText, password: passwordText, userName: usernameText){
            (NetworkResult) -> (Void) in
            switch NetworkResult{
            case .success(let data):
                if let signUpData = data as? signUpData{
                    self.simpleAlert(title:"회원가입 성공", message: "\(signUpData.userName)님 회원가입 성공!")
                    UserDefaults.standard.set(signUpData.userName, forKey: "userName")
                }
            case .requestErr(let msg):
                if let message = msg as? String{
                    self.simpleAlert(title: "회원가입 실패", message: message)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
