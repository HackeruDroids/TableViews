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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")!
        
        //2) configure the data - data binding
        cell.textLabel?.text = movie.title
        cell.imageView?.image = movie.image
        cell.detailTextLabel?.text = movie.date.description
        
        return cell
    }
}

extension MoviesViewController: UITableViewDelegate{
    
}
