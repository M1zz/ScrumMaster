//
//  ContentView.swift
//  ScrumMaster
//
//  Created by hyunho lee on 2023/01/19.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                
                Spacer()
                
                VStack {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "forward.fill")
                }
            }
            .accessibilityLabel("Next speaker")
        }
        .padding()
    }
}
struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
