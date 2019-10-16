//
//  FiltersViewController.swift
//  SearchTextFieldDemo
//
//  Created by John Kouris on 10/16/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit
import SwiftMessages

class FiltersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let messageView = BaseView(frame: .zero)
        messageView.backgroundHeight = 300
        SwiftMessages.show(view: messageView)
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func demoAnyView() -> Void {
        let messageView = BaseView(frame: .zero)
        messageView.layoutMargins = .zero
        messageView.backgroundHeight = 120.0
        do {
            let backgroundView = CornerRoundingView()
            backgroundView.cornerRadius = 15
            backgroundView.layer.masksToBounds = true
            messageView.installBackgroundView(backgroundView)
            messageView.layoutMarginAdditions = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        messageView.configureDropShadow()
        var config = SwiftMessages.defaultConfig
        config.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
        SwiftMessages.show(config: config, view: messageView)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
