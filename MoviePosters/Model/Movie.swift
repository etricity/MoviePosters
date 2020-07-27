//
//  Movie.swift
//  MoviePosters
//
//  Created by Isaiah Cuzzupe on 27/7/20.
//  Copyright © 2020 s3743803_s3728738_s3541003. All rights reserved.
//

import Foundation

enum Movie {
    case backToTheFuture1, backToTheFuture2, backToTheFuture3
    
    var details: (title: String, imageName: String, runningTime: Double) {
        switch self {
        case .backToTheFuture1:
            return ("Back to the Future 1", "bttf1", 121)
        case .backToTheFuture2:
            return ("Back to the Future 2", "bttf2", 122)
        case .backToTheFuture3:
            return ("Back to the Future 3", "bttf3", 123)
        }
    }
}
