//
//  ViewController.swift
//  TwitterAnimation
//
//  Created by Shah Md Imran Hossain on 1/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    var spriteImages = [UIImage]()
    let imageView: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        style()
        
        for i in 0...28 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }
    
    private func setup() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "tile00")
        
        view.addSubview(imageView)
        
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
    }

    private func style() {
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    }
}

// MARK: - Actions
extension ViewController {
    @objc func animate() {
        imageView.animationImages = spriteImages
        imageView.animationDuration = 0.6
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}
