//
//  CategoryItem.swift
//  Landmarks
//
//  Created by brkss on 20/11/2022.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: LandMark
    var body: some View {
        VStack (alignment: .leading){
            landmark.image
                .resizable()
                .renderingMode(.original)
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .fontWeight(.bold)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var landmark = ModelData().landmarks[0]
    static var previews: some View {
        CategoryItem(landmark: landmark)
    }
}
