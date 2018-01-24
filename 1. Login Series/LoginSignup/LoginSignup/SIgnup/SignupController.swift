//
//  SignupController.swift
//  LoginSignup
//
//  Created by Anthony Washington on 1/23/18.
//  Copyright © 2018 Anthony Washington. All rights reserved.
//

import UIKit

class SignupController: UIViewController {
    
    let haveAccountButton: UIButton = {
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
        let font = UIFont.systemFont(ofSize: 16)
        
        let h = UIButton(type: .system)
            h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string:
            "Already have an account? ", attributes: [NSAttributedStringKey.foregroundColor:
                color, NSAttributedStringKey.font : font ])
        
        attributedTitle.append(NSAttributedString(string: "Sign In", attributes:
            [NSAttributedStringKey.foregroundColor: UIColor.white,
             NSAttributedStringKey.font: font]))
        
            h.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
            h.setAttributedTitle(attributedTitle, for: .normal)
        return h
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        
        setupHaveAccountButton()
    }
    
    @objc func signInAction() {
        navigationController?.popViewController(animated: true)
    }
    
    fileprivate func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                  bottomPad: 8, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor,
                                  rightPad: 0, height: 20, width: 0)

    }
}
