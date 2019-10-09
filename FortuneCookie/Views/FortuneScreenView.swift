//
//  FortuneScreen.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class FortuneScreenView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
        setViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.4117647059, blue: 0.4117647059, alpha: 1)
        setupSubViews()
        
    }
    
    func setupSubViews() {
        addSubview(cookieImageView)
    }
    
    let  cookieImageView: UIImageView  = {
        let  imageView = UIImageView()
        imageView.image = UIImage(named: "cookie")
        
        return  imageView
    }()
    
    
    
    
}

//class LoadingView:  UIView {
//    override init(frame: CGRect) {
//        super .init(frame: frame)
//        setupView()
//    }
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func  setupView() {
//        backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
//        setupSubViews()
//        setViewConstraints()
//
//    }
//
//    func setupSubViews() {
//        addSubview(logoImageView)
//        addSubview(loadingLabel)
//    }
//
//    let logoImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "fortunecookie")
//
//        return imageView
//    }()
//
//    let loadingLabel: UILabel = {
//        let  label = UILabel()
//        label.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//        label.text = "Your fortune is waiting"
//        label.font = UIFont(name: "AktivGrotesk", size: 100)
//        label.textAlignment = .center
//
//        return label
//
//    }()
//
//
//}
