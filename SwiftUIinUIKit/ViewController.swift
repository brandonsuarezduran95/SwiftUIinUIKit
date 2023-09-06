//
//  ViewController.swift
//  SwiftUIinUIKit
//
//  Created by Brandon Suarez on 9/6/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
        // Do any additional setup after loading the view.
    }
    
    func configureButton() {
        view.addSubview(button)
        
        button.setTitle("Show SwiftUI", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    @objc func didTapButton( _ sender: UIButton) {
        let viewController = UIHostingController(rootView: SwiftUIView())
        present(viewController, animated: true)
    }
}

