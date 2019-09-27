//
//  FirstScreen.swift
//  Programmatic
//
//  Created by Kevin Lagat on 24/09/2019.
//  Copyright © 2019 Kevin Lagat. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNextButton()
        view.backgroundColor = .purple
    }
    
    func setupNextButton() {
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("NEXT", for: .normal)
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        setNextButtonConstraints()
    }
    
    @objc func nextButtonTapped() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func setNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    

}
