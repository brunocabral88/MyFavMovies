//
//  ViewController.swift
//  MyFavMovies
//
//  Created by Bruno on 11/09/17.
//  Copyright © 2017 Bruno. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var movies : [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movies.append(Movie(title: "007 - Spectrum", description: "Description 01", image: #imageLiteral(resourceName: "filme1")))
        movies.append(Movie(title: "Star Wars", description: "Description 02", image: #imageLiteral(resourceName: "filme2")))
        movies.append(Movie(title: "Blunt Force Trauma", description: "Description 03", image: #imageLiteral(resourceName: "filme3")))
        movies.append(Movie(title: "Deadpool", description: "Description 04", image: #imageLiteral(resourceName: "filme4")))
        movies.append(Movie(title: "The Revenant", description: "Description 05", image: #imageLiteral(resourceName: "filme5")))
        movies.append(Movie(title: "The Shamer's Daughter", description: "Description 06", image: #imageLiteral(resourceName: "filme6")))
        movies.append(Movie(title: "Point Break", description: "Description 07", image: #imageLiteral(resourceName: "filme7")))
        movies.append(Movie(title: "Regresso do Mal", description: "Description 08", image: #imageLiteral(resourceName: "filme8")))
        movies.append(Movie(title: "Tarzan", description: "Description 09", image: #imageLiteral(resourceName: "filme9")))
        movies.append(Movie(title: "Hardcore", description: "Description 10", image: #imageLiteral(resourceName: "filme10")))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[indexPath.row] // Selected movie
        let reusableCell = "reusableCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath) as! MovieCell

        cell.movieImage.image = movie.image
        cell.movieImage.layer.cornerRadius = 43 // Image radius
        cell.movieImage.clipsToBounds = true // Image radius
        cell.movieTitle.text = movie.title
        cell.movieDescription.text = movie.description
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showMovieDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let movie = movies[indexPath.row]
                let destination = segue.destination as! MovieDetailsViewController
                destination.movie = movie
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}

