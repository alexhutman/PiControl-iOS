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
    @State var testCells: [PiListItem] = TestPiList.devices
    
    var body: some View {
        NavigationView {
            List {
                ForEach(testCells, id: \.id) { device in
                    VStack(alignment: .leading){
                        Text(device.piName)
                            .lineLimit(1)
                            .font(.headline)
                        Text(device.ipAddr)
                            .font(.subheadline)
                        Text("Last connected on: \(piItemDateToString(itemDate: device.lastConnectedDate))")
                            .font(.subheadline)
                    }
                }
                .onDelete(perform: self.deleteDevice)
            }
            .navigationTitle("Connected Devices")
            .navigationBarItems(trailing:
                                    HStack {
                Button(action: {
                    // TODO: Actually add device to list
                    print("New Device Added")
                }) {
                    Image(systemName: "plus")
                }
            })
        }
    }
    
    private func deleteDevice(at indexSet: IndexSet) {
        self.testCells.remove(atOffsets: indexSet)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PiListView()
    }
}

private let connectionDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

private func piItemDateToString(itemDate: Date?) -> String {
    if itemDate == nil {
        return "-"
    }
    return connectionDateFormatter.string(from: itemDate!)
}
