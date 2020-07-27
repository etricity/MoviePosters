//
//  ViewController.swift
//  MoviePosters
//
//  Created by Isaiah Cuzzupe on 27/7/20.
//  Copyright © 2020 s3743803_s3728738_s3541003. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //View connctions
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var runningTime: UILabel!
    
    @IBAction func changeButton(_ sender: UIButton) {
        switch movie {
        case .backToTheFuture1:
            movie = .backToTheFuture2
        case .backToTheFuture2:
            movie = .backToTheFuture3
        case .backToTheFuture3:
            movie = .backToTheFuture1
        }
        updateView(movie: movie)
    }
    
    //Model Connection
    var movie = Movie.backToTheFuture1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Loading initial values
        
        updateView( movie:  movie )
    }
    
    func updateView(movie: Movie) {
        movieTitle.text = movie.details.title
        image.image = UIImage(named: movie.details.imageName)
        runningTime.text = "Running Time: \(String(movie.details.runningTime)) mins"
    }


}

