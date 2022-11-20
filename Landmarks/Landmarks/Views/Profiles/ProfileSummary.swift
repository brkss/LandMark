//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by brkss on 20/11/2022.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .fontWeight(.bold)
                    .font(.title)
                Text("Notification : \(profile.preferNotification ? "On" : "Off")")
                Text("Seasonal Photos : \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date : ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
