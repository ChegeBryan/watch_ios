//
//  SendMessage.swift
//  Counter Watch App
//
//  Created by Brian Chege on 04/10/2022.
//

import Foundation
import WatchConnectivity
import WatchKit


func sendDataMessage(for method: WatchSendMethod, data: [String: Any] = [:]) {
  sendMessage(for: method.rawValue, data: data)
}

func sendMessage(for method: String, data: [String:Any] = [:]) {
    guard session.isReachable else {
        return
    }
    
    let messageData:[String:Any] = ["method": method, "data": data]
    session.sendMessage(messageData, replyHandler: nil, errorHandler: nil)
    
}

// how to use


