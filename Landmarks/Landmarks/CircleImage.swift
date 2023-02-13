//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jaswitha Reddy G on 2/12/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("shawnee")
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
