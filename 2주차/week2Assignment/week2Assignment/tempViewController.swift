//
//  tempViewController.swift
//  week2Assignment
//
//  Created by 이정엽 on 2020/10/30.
//

import UIKit

class tempViewController: UIViewController, UIScrollViewDelegate
{
    
    @IBOutlet var topBtn: UIButton!
    @IBOutlet var tempScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad();
        tempScrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var y = scrollView.contentOffset.y
        print(y)
    }
    

}
