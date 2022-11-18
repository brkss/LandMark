//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by brkss on 18/11/2022.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark : LandMark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkRow(landmark: ModelData().landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
            
        }
        
    }
}
