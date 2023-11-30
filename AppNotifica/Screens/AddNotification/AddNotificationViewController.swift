//
//  AddNotificationViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AddNotificationViewController: ViewControllerDefault {
    lazy var addNotificationView: AddNotificationView = {
        let view = AddNotificationView()
        view.onCameraTap = {
            ImageChooser().selectImage(self) { image in
                view.setImage(image)
            }
        }
        return view
    }()
    
    override func loadView() {
        self.view = addNotificationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
    }
    
}
