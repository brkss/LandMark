//
//  Profile.swift
//  Landmarks
//
//  Created by brkss on 20/11/2022.
//

import Foundation


struct Profile {

    var username: String
    var preferNotification = true
    var seasonalPhoto = Season.summer
    var goalDate = Date()
    
    static let `default` = Profile(username: "avocado")
    
    enum Season : String, CaseIterable, Identifiable {
        
        case spring = "🌸"
        case winter = "🌨"
        case summer = "🌞"
        case autumn = "🍂"
        
        var id: String {rawValue}
    }
    
}
