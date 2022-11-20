//
//  CategoryHome.swift
//  Landmarks
//
//  Created by brkss on 20/11/2022.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showProfile = false
    
    var body: some View {
        NavigationView {
            
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
                .navigationTitle("Featured")
                .toolbar {
                    Button {
                        showProfile.toggle()
                    } label: {
                        Label("User Profile", systemImage: "person.crop.circle")
                    }
                }.sheet(isPresented: $showProfile){
                    ProfileHost()
                        .environmentObject(modelData)
                }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
