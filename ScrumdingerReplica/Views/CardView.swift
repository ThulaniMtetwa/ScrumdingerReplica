//
//  CardView.swift
//  ScrumdingerReplica
//
//  Created by Thulani Mtetwa on 2025/03/21.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            AttendeeMeetingDurarionView(scrum: scrum)
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)
    }
}

struct CardView_Preview: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

struct AttendeeMeetingDurarionView: View {
    let scrum: DailyScrum
    var body: some View {
        HStack {
            Label("\(scrum.attendees.count)", systemImage: "person.3")
                .accessibilityLabel("\(scrum.attendees.count) attendees")
            Spacer()
            Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                .labelStyle(.trailingIcon)
        }
        .font(.caption)
    }
}
