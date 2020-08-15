//
//  ViewController.swift
//  VideoSplash
//
//  Created by nimo on 2017/5/4.
//  Copyright © 2017年 nimoAndHisFriends. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let buttonHeight:CGFloat = 56
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = UIColor(red: 25/255.0, green: 153/255.0, blue: 3/255.0, alpha: 1)
        
        let logoImageView = UIImageView(frame: CGRect(x: 0, y: 50, width: 334, height: 101))
        logoImageView.image = #imageLiteral(resourceName: "logo.png")
        self.view.addSubview(logoImageView)
        logoImageView.center.x = self.view.center.x
        
        let loginButton = UIButton(frame: CGRect(x: 0, y: (self.view.frame.size.height - buttonHeight), width: self.view.frame.width / 2.0, height: buttonHeight))
        loginButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        loginButton.setTitle("LOG IN", for: UIControl.State.normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        loginButton.backgroundColor = UIColor(red: 35/255.0, green: 36/255.0, blue: 38/255.0, alpha: 1)
        self.view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(loginAction), for: UIControl.Event.touchUpInside)
        
        let signupButton = UIButton(frame: CGRect(x: self.view.frame.width / 2.0, y: (self.view.frame.size.height - buttonHeight), width: self.view.frame.width / 2.0, height: buttonHeight))
        signupButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        signupButton.setTitle("SIGN UP", for: UIControl.State.normal)
        signupButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        signupButton.backgroundColor = UIColor(red: 42/255.0, green: 183/255.0, blue: 90/255.0, alpha: 1)
        self.view.addSubview(signupButton)
    }
    @objc func loginAction() {
        let loginVC = LoginViewController()
        self.navigationController?.pushViewController(loginVC, animated: false)
    }
}

