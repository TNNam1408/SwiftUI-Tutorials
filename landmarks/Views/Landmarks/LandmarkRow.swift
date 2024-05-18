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
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}
#Preview("Turtle Rock + Salmon") {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[0])
}

#Preview("Salmon") {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[1])
}
