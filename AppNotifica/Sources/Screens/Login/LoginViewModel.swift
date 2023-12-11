//
//  LoginViewModel.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 10/12/23.
//

import UIKit

enum Error: Swift.Error {
    case noInternet
    case invalidPassword
    case invalidUsername
}
struct User {
    var name: String
    var email: String
}
class LoginViewModel {
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
    
    var errorStateChanged: ((String?) -> Void)?
    var loginSuccess: ((_ user: User) -> Void)?
    func makeLogin(username: String, password: String){
        //TODO: login Service call
        self.currentUser = User(name: "Test Name", email: "test@email.com")
    }

}
