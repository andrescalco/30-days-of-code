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
        
        uiview.translatesAutoresizingMaskIntoConstraints = false
        uiview.backgroundColor = UIColor(red: 79.0/255, green: 118.0/255, blue: 170.0/255, alpha: 1.0)
        
        return uiview
    }()
    
    let rocketImageView: UIImageView = {
        let image = UIImage(named: "rocketAndStream")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let cloudsImageView: UIImageView = {
        let image = UIImage(named: "cloudsAndOrangeOval")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
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
        
        rocketView.addSubview(rocketImageView)
        rocketView.addSubview(cloudsImageView)
        
        cloudsImageView.bottomAnchor.constraint(equalTo: rocketView.bottomAnchor, constant: 80).isActive = true
        cloudsImageView.leadingAnchor.constraint(equalTo: rocketView.leadingAnchor).isActive = true
        cloudsImageView.trailingAnchor.constraint(equalTo: rocketView.trailingAnchor).isActive = true
        
        rocketImageView.bottomAnchor.constraint(equalTo: rocketView.bottomAnchor, constant: 300).isActive = true
        rocketImageView.leadingAnchor.constraint(equalTo: rocketView.leadingAnchor).isActive = true
        rocketImageView.trailingAnchor.constraint(equalTo: rocketView.trailingAnchor).isActive = true
        
        rocketView.isHidden = true
        
    }
    
    @objc func showRocketView() {
        rocketView.isHidden = false
        
        self.rocketImageView.topAnchor.constraint(equalTo: self.rocketView.topAnchor, constant: 20).isActive = true
        
        UIView.animate(withDuration: 2.3, animations: {
            self.view.layoutIfNeeded()
        }) { (finished) in

        }
        
    }

}

