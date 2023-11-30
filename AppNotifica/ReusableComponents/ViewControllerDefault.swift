//
//  ViewControllerDeafult.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class ViewControllerDefault: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboardWhenTappingOutside))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboardWhenTappingOutside() {
        self.view.endEditing(true)
    }
}
