//
//  ViewController.swift
//  assignment
//
//  Created by 이정엽 on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var part: UILabel!
    @IBOutlet var partList: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var image: UIImageView!
    
    var tempPart: String?
    var tempName: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        update()
    }
    
    func update(){
        guard let tempPart = self.tempPart, let tempName = self.tempName else{
            return
        }
        if tempPart == "" && tempName == ""{
            part.text = ""
            partList.text = ""
            name.text = ""
        }else{
            part.text = "파트"
            part.font = UIFont.boldSystemFont(ofSize: 16.0)
            part.sizeToFit()
            partList.text = tempPart
            partList.font = UIFont.boldSystemFont(ofSize: 16.0)
            partList.sizeToFit()

            name.text = "\(tempName)님 안녕하세요 ~~^^"
            name.sizeToFit()
            name.center.x = self.view.center.x
        }
    }
    
    
    @IBAction func accountBtn(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "verificationViewController") else{
            return
        }
        dvc.modalPresentationStyle = .fullScreen
        self.present(dvc, animated: true, completion: nil)
    }
}


