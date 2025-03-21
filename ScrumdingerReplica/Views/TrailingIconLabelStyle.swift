//
//  TrailingIconLabelStyle.swift
//  ScrumdingerReplica
//
//  Created by Thulani Mtetwa on 2025/03/21.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
