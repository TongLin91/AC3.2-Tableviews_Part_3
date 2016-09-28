//
//  MovieCastDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Tong Lin on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieCastDetailViewController: UIViewController {

    internal var selectedMovie: Movie!
    
    @IBOutlet weak var castTitleLabel: UILabel!
    @IBOutlet weak var castListLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.castListLabel.text = ""
        self.updateViews(for: self.selectedMovie)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func updateViews(for movie: Movie) {
        navigationItem.title = movie.title
        for i in movie.cast{
            self.castListLabel.text?.append("- " + i.firstName + " " + i.lastName + "\n")
        }
    }

}
