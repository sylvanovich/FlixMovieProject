//
//  DetailViewController.swift
//  FlixMovieProject
//
//  Created by Joseph Sylvanovich on 2/23/19.
//  Copyright © 2019 Joseph Sylvanovich. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {

    var movie: [String:Any]!

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var synopsisView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleView.text = movie["title"] as? String
        synopsisView.text = movie["overview"] as? String
        synopsisView.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        imageView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        posterView.af_setImage(withURL: backdropUrl!)
        
    }
    
/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        //find the selected movie
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        let movie = movies[indexPath.row]
        //pass the movie to the selected veiew
        //let detailsViewController = segue.destination as! MoviesDetailViewController
        // detailsViewController.movie = movie
    */
    }
        



