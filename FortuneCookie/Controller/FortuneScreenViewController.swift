//
//  FortuneScreenViewController.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import  UIKit

class FortuneScreenViewController: UIViewController {
    var fortuneView: FortuneScreenView!
    
    var network = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        network.getFortune()
        
    }
    func setup(){
        setupView()
    }
    
    func setupView(){
        let mainView = FortuneScreenView(frame: self.view.frame)
        self.fortuneView = mainView
        self.view.addSubview(fortuneView)
    }
}

