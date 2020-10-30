//
//  ViewController.swift
//  week2Assignment
//
//  Created by 이정엽 on 2020/10/29.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var mainScrollView: UIScrollView!
    
    @IBOutlet var topBtn: UIButton!
    @IBOutlet var profileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileButton.layer.cornerRadius = 5;
        mainScrollView.delegate = self;
        topBtn.layer.cornerRadius = 0.5 * topBtn.bounds.size.width
        var y = mainScrollView.contentOffset.y;
        if y>=420.0{
            topBtn.isHidden = false;
        }else{
            topBtn.isHidden = true;
        }
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var y = scrollView.contentOffset.y;
        if y>=420.0{
            topBtn.isHidden = false;
        }else{
            topBtn.isHidden = true;
        }
    }
    
    

    @IBAction func topBtnClick(_ sender: Any) {
        mainScrollView.setContentOffset(CGPoint.zero, animated: false)
    }
    
}

