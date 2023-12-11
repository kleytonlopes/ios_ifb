//
//  NotificationListViewModel.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 11/12/23.
//

import UIKit

struct Notification {
    var title: String
    var subtitle: String
}
class NotificationsListViewModel {

    private var currentError: Error? {
        didSet{
            self.errorStateChanged?(currentError?.localizedDescription)
        }
    }
    private var notifications: [Notification]? {
        didSet{
            if let notifications = notifications{
                self.downloadDataSuccess?(notifications)
            }
        }
    }
    
    var errorStateChanged: ((String?) -> Void)?
    var downloadDataSuccess: ((_ notifications: [Notification]) -> Void)?
    func fetchData(){
        //TODO: Fetch Data Service call
        self.notifications = [
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
    }

}
