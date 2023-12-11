//
//  NotificationsServiceProtocol.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 11/12/23.
//

import Foundation

protocol NotificationsServiceProtocol{
    func downloadData(completion: @escaping (_ array: [Notification]) -> Void)
    func makeLogin(completion: @escaping (_ data: User) -> Void)
}
