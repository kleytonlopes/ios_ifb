//
//  NotificationListViewModel.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 11/12/23.
//

import UIKit

class NotificationsListViewModel {
    private var notificationService: NotificationsServiceProtocol
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
    
    init (service: NotificationsServiceProtocol){
        self.notificationService = service
    }
    
    var errorStateChanged: ((String?) -> Void)?
    var downloadDataSuccess: ((_ notifications: [Notification]) -> Void)?
    func fetchData(){
        notificationService.downloadData { array in
            self.notifications = array
        }
    }

}
