//
//  ViewController.swift
//  SearchTextFieldDemo
//
//  Created by John Kouris on 10/16/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit
import SearchTextField

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


}

