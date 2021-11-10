//
//  PiListItem.swift
//  PiControl
//
//  Created by Alex on 11/9/21.
//

import SwiftUI

struct PiListItem: Identifiable {
    let id = UUID()
    let piName: String
    let ipAddr: String
    let lastConnectedDate: Date?
}

struct TestPiList {
    static let devices = [
        PiListItem(
            piName: "Home Pi",
            ipAddr: "192.168.1.254",
            lastConnectedDate: Date()
        ),

        PiListItem(
            piName: "Brian's Pi",
            ipAddr: "192.168.1.133",
            lastConnectedDate: DateComponents(
                calendar: Calendar.current,
                timeZone: TimeZone.current,
                year: 2021,
                month: 10,
                day: 5,
                hour: 12,
                minute: 26,
                second: 7
            ).date!
        ),
        
        PiListItem(
            piName: "Vacation Pi",
            ipAddr: "192.168.1.12",
            lastConnectedDate: DateComponents(
                calendar: Calendar.current,
                timeZone: TimeZone.current,
                year: 2020,
                month: 4,
                day: 17,
                hour: 15,
                minute: 02,
                second: 54
            ).date!
        ),
    
        PiListItem(
            piName: "New Pi",
            ipAddr: "192.168.1.88",
            lastConnectedDate: nil
        )
    ]
}
