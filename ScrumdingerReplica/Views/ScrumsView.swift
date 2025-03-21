//
//  ScrumsView.swift
//  ScrumdingerReplica
//
//  Created by Thulani Mtetwa on 2025/03/21.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { dailyScrum in
            CardView(scrum: dailyScrum)
                .listRowBackground(dailyScrum.theme.mainColor)
        }
    }
}

struct ScrumsView_Preview: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
