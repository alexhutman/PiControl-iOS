//
//  ContentView.swift
//  PiControl
//
//  Created by Alex on 11/8/21.
//

import SwiftUI
import CoreData


struct PiListView: View {
    // To test view
    var testCells: [PiListItem] = TestPiList.devices
    
    var body: some View {
        NavigationView {
            List(testCells, id: \.id) { device in
                VStack(alignment: .leading){
                    Text(device.piName)
                        .lineLimit(1)
                        .font(.headline)
                    Text(device.ipAddr)
                        .font(.subheadline)
                    Text("Last connected on: " + itemFormatter.string(from: device.lastConnectedDate))
                        .font(.subheadline)
                }
            }
            .navigationTitle("Connected Devices")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PiListView()
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()
