//
//  MeetingView.swift
//  ScrumdingerReplica
//
//  Created by Thulani Mtetwa on 2025/03/19.
//
import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            TimeRemainingView()
            Circle()
                .strokeBorder(lineWidth: 24)
            NextSpeakerView()
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}

struct TimeRemainingView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Seconds Elapsed")
                    .font(.caption)
                Label("300", systemImage: "hourglass.tophalf.fill")
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("Seconds Remaining")
                    .font(.caption)
                Label("600", systemImage: "hourglass.bottomhalf.fill")
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("10 minutes")
    }
}

struct NextSpeakerView: View {
    var body: some View {
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
    }
}
