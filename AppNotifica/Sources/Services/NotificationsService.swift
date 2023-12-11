//
//  NotificationsService.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 11/12/23.
//

import Foundation

//TODO: Make API Calls and remove Singleton

class NotificationsService {
    static let shared = NotificationsService()
    private init() { }
}

extension NotificationsService: NotificationsServiceProtocol{
    func downloadData(completion: @escaping (_ array: [Notification]) -> Void){
        completion([
                      Notification(title: "Título da Ocorrência 1", subtitle: "10/10/2023"),
                      Notification(title: "Título da Ocorrência 2", subtitle: "09/10/2023"),
                      Notification(title: "Título da Ocorrência 3", subtitle: "11/09/2023"),
                      Notification(title: "Título da Ocorrência 4", subtitle: "10/09/2023"),
                      Notification(title: "Título da Ocorrência 5", subtitle: "10/08/2023"),
                      Notification(title: "Título da Ocorrência 6", subtitle: "10/07/2023"),
                      Notification(title: "Título da Ocorrência 7", subtitle: "10/06/2023"),
                      Notification(title: "Título da Ocorrência 8", subtitle: "10/05/2023"),
                      Notification(title: "Título da Ocorrência 9", subtitle: "09/05/2023"),
                      Notification(title: "Título da Ocorrência 10", subtitle: "01/04/2023"),
                    ]
        )
    }
    
    func makeLogin(completion: @escaping (_ data: User) -> Void){
        completion(User(name: "Test Name", email: "test@email.com"))
    }
}
