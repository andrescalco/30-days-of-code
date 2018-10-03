//
//  ViewController.swift
//  hustleProg
//
//  Created by André Felipe Scalco on 03/10/18.
//  Copyright © 2018 André Felipe Scalco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let powerBTN: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "powerButton")
        
        // enable auto layout
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // set dimensions
        button.widthAnchor.constraint(equalToConstant: 96).isActive = true
        button.heightAnchor.constraint(equalToConstant: 96).isActive = true
        
        // set bg
        button.setBackgroundImage(image, for: .normal)
        
        button.addTarget(self, action: #selector(showRocketView), for: .touchUpInside)

        return button
    }()
    
    let rocketView: UIView = {
        let uiview = UIView()
        
        let cloudsImage = UIImage(named: "cloudsAndOrangeOval")
        let cloudsImageView = UIImageView(image: cloudsImage)
        
        let rocketImage = UIImage(named: "rocketAndStream")
        let rocketImageView = UIImageView(image: rocketImage)
        
        uiview.translatesAutoresizingMaskIntoConstraints = false
        uiview.backgroundColor = UIColor(red: 79.0/255, green: 118.0/255, blue: 170.0/255, alpha: 1.0)
        
        cloudsImageView.translatesAutoresizingMaskIntoConstraints = false
        rocketImageView.translatesAutoresizingMaskIntoConstraints = false
        
        uiview.addSubview(cloudsImageView)
        uiview.addSubview(rocketImageView)
        
        cloudsImageView.bottomAnchor.constraint(equalTo: uiview.bottomAnchor).isActive = true

        return uiview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 50.0/255, green: 62.0/255, blue: 70.0/255, alpha: 1.0)
        
        view.addSubview(powerBTN)
        view.addSubview(rocketView)
        
        setupLayout()
    }
    
    private func setupLayout() {
        powerBTN.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        powerBTN.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        rocketView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        rocketView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        rocketView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        rocketView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1.0).isActive = true
        
        rocketView.isHidden = true
        
    }
    
    @objc func showRocketView() {
        rocketView.isHidden = false
    }


}

