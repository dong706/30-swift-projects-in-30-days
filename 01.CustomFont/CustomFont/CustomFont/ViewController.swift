//
//  ViewController.swift
//  CustomFont
//
//  Created by nimo on 18/03/2017.
//  Copyright © 2017 nimo. All rights reserved.
//

import UIKit
import SnapKit

var isSystemFont:Bool = true;

class ViewController: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "I am the king of the world"
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.centerX.equalTo(self.view)
        }
        label.font = UIFont.systemFont(ofSize: 30)
        
        let changeBtn = UIButton(type: .custom)
        changeBtn.setTitle("Change Font Family", for: UIControl.State.normal)
        changeBtn.addTarget(self, action: #selector(changeFontFamily), for: UIControl.Event.touchUpInside)
        changeBtn.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        self.view.addSubview(changeBtn)
        changeBtn.layer.borderColor = UIColor.blue.cgColor
        changeBtn.layer.borderWidth = 1
        changeBtn.layer.cornerRadius = 5
        
        changeBtn.snp.makeConstraints { (make) in
            make.top.equalTo(500)
            make.centerX.equalTo(self.view) //设置居中
            make.width.equalTo(200) //设置宽度
            make.height.equalTo(50) //设置高度
        }
        printAllSupportedFontNames()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func changeFontFamily() {
        if isSystemFont {
            label.font = UIFont(name: "Savoye LET", size: 30)
            isSystemFont = false
        }else{
            label.font = UIFont.systemFont(ofSize: 30)
            isSystemFont = true
        }
        
    }
    
    func printAllSupportedFontNames() {
        let familyNames = UIFont.familyNames
        for familyName in familyNames {
            print("++++++ \(familyName)")
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            for fontName in fontNames {
                print("----- \(fontName)")
            }
        }
    }

}

