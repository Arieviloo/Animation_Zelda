//
//  ViewController.swift
//  AnimationZelda
//
//  Created by Jadiê on 14/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    let swiftImages = [
        UIImage(named: "camada1")!,
        UIImage(named: "camada2")!,
        UIImage(named: "camada3")!,
        UIImage(named: "camada4")!,
        UIImage(named: "camada5")!,
        UIImage(named: "camada6")!,
        UIImage(named: "camada7")!,
        UIImage(named: "camada8")!,
        UIImage(named: "camada9")!,
        UIImage(named: "camada10")!,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        
        let animation = UIImage.animatedImage(with: swiftImages, duration: 1)
        let imageView: UIImageView = UIImageView(image: animation)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
        
    }


}

