//
//  LandmarkList.swift
//  landmarks
//
//  Created by Tran Nhat Nam on 18/05/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //         MARK: Kiểu list 1
        //        List {
        //            LandmarkRow(landmark: landmarks[0])
        //            LandmarkRow(landmark: landmarks[1])
        //        }
        
        //         MARK: Kiểu list 2
        //        List(landmarks, id: \.id) {landmark in
        //            LandmarkRow(landmark: landmark)
        //        }
        
        //       MARK: Hoặc có thể viết như sau khi khi khai báo giao thức Identifiable tại LandMark.swift
        
        //        List(landmarks) {landmark in
        //                LandmarkRow(landmark: landmark)
        //        }
        
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
