//
//  ModelData.swift
//  Landmarks
//
//  Created by brkss on 18/11/2022.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [LandMark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    var categories: [String: [LandMark]] {
        Dictionary(
                grouping: landmarks,
                by: { $0.category.rawValue }
        )
    }
    var features: [LandMark] {
        landmarks.filter { $0.isFeatured }
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }

    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("Couldn't load \(filename) from main Bundle \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

