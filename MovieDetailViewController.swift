//
//  MovieDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Tong Lin on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    internal var selectedMovie: Movie!
    
    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var summaryFullTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.updateViews(for: self.selectedMovie)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    internal func updateViews(for movie: Movie) {
        navigationItem.title = movie.title
        self.moviePosterImageView.image = UIImage(named: movie.poster)!
        self.genreLabel.text = "Genre: " + movie.genre.capitalized
        self.locationLabel.text = "Locations: " + movie.locations.joined(separator: ", ")
        self.summaryFullTextLabel.text = movie.summary
    }
    
}
