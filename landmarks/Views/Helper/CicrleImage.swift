//
//  CicrleImageUIView.swift
//  landmarks
//
//  Created by Tran Nhat Nam on 13/05/2024.
//

import SwiftUI

struct CicrleImage: View {
    var image: Image
    
    var body: some View {
        
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 8)
    }
}

#Preview {
    CicrleImage(image: Image("turtlerock"))
}
