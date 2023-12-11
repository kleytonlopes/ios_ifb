//
//  LoginViewModel.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 10/12/23.
//

import UIKit

class LoginViewModel {
    private var notificationService: NotificationsServiceProtocol
    private var currentError: Error? {
        didSet{
            self.errorStateChanged?(currentError?.localizedDescription)
        }
    }
    private var currentUser: User? {
        didSet{
            if let user = currentUser{
                self.loginSuccess?(user)
            }
        }
    }
    
    init (service: NotificationsServiceProtocol){
        self.notificationService = service
    }
    
    var errorStateChanged: ((String?) -> Void)?
    var loginSuccess: ((_ user: User) -> Void)?
    func makeLogin(username: String, password: String){
        notificationService.makeLogin { user in
            self.currentUser = user
        }
    }

}
