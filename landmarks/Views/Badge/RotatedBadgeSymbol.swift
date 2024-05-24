//
//  RotateBadgeSymbol.swift
//  landmarks
//
//  Created by Tran Nhat Nam on 22/05/2024.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
                    .padding(-60)
                    .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
