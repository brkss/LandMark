//
//  LandmarkList.swift
//  Landmarks
//
//  Created by brkss on 18/11/2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showFavorite = false;
    
    var filtredLandMarks: [LandMark]  {
        modelData.landmarks.filter { landmark in
            (!showFavorite || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavorite){
                    Text("show favorites")
                        .fontWeight(.bold)
                }
                ForEach(filtredLandMarks){ landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandMarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
