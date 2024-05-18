//
//  LandmarkRow.swift
//  landmarks
//
//  Created by Tran Nhat Nam on 18/05/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 48, height: 48)
            Text(landmark.name)
            Spacer()
        }
    }
}
#Preview("Turtle Rock + Salmon") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("Salmon") {
    LandmarkRow(landmark: landmarks[1])
}
