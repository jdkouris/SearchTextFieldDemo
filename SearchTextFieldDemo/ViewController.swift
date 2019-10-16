//
//  ViewController.swift
//  SearchTextFieldDemo
//
//  Created by John Kouris on 10/16/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit
import SearchTextField
import SwiftMessages

class ViewController: UIViewController {
    
    @IBOutlet var searchTextField: SearchTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchTextField()
    }
    
    func setupSearchTextField() {
        searchTextField.filterStrings(["Red", "Blue", "Orange"])
        searchTextField.highlightAttributes = [NSAttributedString.Key.backgroundColor: UIColor.orange, NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 12)]
        
    }
    
    @IBAction func testButtonTapped(_ sender: Any) {
        demoAnyView()
    }
    
    func demoAnyView() -> Void {
        let messageView = BaseView(frame: .zero)
        messageView.layoutMargins = .zero
        messageView.backgroundHeight = 400.0
//        let saveButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        saveButton.translatesAutoresizingMaskIntoConstraints = false
//        saveButton.topAnchor.constraint(equalTo: messageView.topAnchor).isActive = true
//        saveButton.leadingAnchor.constraint(equalTo: messageView.leadingAnchor).isActive = true
//        saveButton.trailingAnchor.constraint(equalTo: messageView.trailingAnchor).isActive = true
//        saveButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        messageView.addSubview(saveButton)
        
        do {
            let backgroundView = CornerRoundingView()
            backgroundView.cornerRadius = 15
            backgroundView.layer.masksToBounds = true
            messageView.installBackgroundView(backgroundView)
            messageView.layoutMarginAdditions = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        messageView.configureDropShadow()
        var config = SwiftMessages.defaultConfig
        config.duration = .forever
        config.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
        SwiftMessages.show(config: config, view: messageView)
    }

}



