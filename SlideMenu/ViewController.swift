//
//  ViewController.swift
//  SlideMenu
//
//  Created by DungB96 on 2018/08/01.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingC: NSLayoutConstraint!
    
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    
    @IBOutlet weak var frontView: UIView!
    
    var menuIsVisible = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTapped(_ sender: Any) {
        if !menuIsVisible {
            leadingC.constant = frontView.bounds.width / 1.5
            trailingC.constant = 0

            
            menuIsVisible = true
        } else {
            leadingC.constant = 0
            trailingC.constant = 0
            
            menuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()})
    }
    
}

