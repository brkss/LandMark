//
//  ProfileHost.swift
//  Landmarks
//
//  Created by brkss on 20/11/2022.
//

import SwiftUI

struct ProfileHost: View {
    
    @State var draftProfile = Profile.default;
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            ProfileSummary(profile: draftProfile)
        }.padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
