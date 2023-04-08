//
//  Task.swift
//  Project 4
//
//  Created by Shane Oliver on 04/06/2023
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite hiking spot:",
                 description: "Where do you like to go to be one with nature?"),
            Task(title: "Your favorite garden:",
                 description: "Where do you like to sit to relax or meditate?"),
            Task(title: "Your favorite restaurant:",
                 description: "Where to you like to go to eat?")
        ]
    }
}
