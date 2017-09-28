//
//  MoviesViewController.swift
//  Tableviews
//
//  Created by hackeru on 8 Tishri 5778.
//  Copyright © 5778 hackeru. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    //stored property
    let ds = MovieDataSource()
    
    //computed property
    var movies: [Movie]{
        return ds.movies
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



extension MoviesViewController: UITableViewDataSource{
    //optional - defaults to 1
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let movie = movies[indexPath.row]
        //0)how does our cell looks like?
        //1)init a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")! as! MovieCell
        
        //2) configure the data - data binding
        cell.poster.image = movie.image
        cell.movieTitle.text = movie.title
        cell.movieDate.text = movie.date.description
        /*
        cell.textLabel?.text = movie.title
        cell.imageView?.image = movie.image
        cell.detailTextLabel?.text = movie.date.description
        */
        
        return cell
    }
  

}

extension MoviesViewController: UITableViewDelegate{
    @objc(tableView:heightForRowAtIndexPath:) func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        //perform a segue from code!
        performSegue(withIdentifier: "masterToDetail", sender: movie)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let movie = sender as? Movie,
            let dest = segue.destination as? MovieDetailsViewController{
            
            dest.movie = movie
        }
    }
}
