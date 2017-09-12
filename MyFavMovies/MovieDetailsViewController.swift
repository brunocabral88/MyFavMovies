//
//  MovieDetailsViewController.swift
//  MyFavMovies
//
//  Created by Bruno on 11/09/17.
//  Copyright © 2017 Bruno. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    var movie : Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        movieImage.image = movie.image
        movieTitle.text = movie.title
        movieDescription.text = movie.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
