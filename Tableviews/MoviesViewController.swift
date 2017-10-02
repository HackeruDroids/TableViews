//
//  MoviesViewController.swift
//  Tableviews
//
//  Created by hackeru on 12 Tishri 5778.
//  Copyright © 5778 hackeru. All rights reserved.
//

import UIKit

class MoviesViewController: UITableViewController {
    
    //stored property:
    let dataSource = MovieDataSource()
    
    //computed property:
    var movies:[Movie] {
        return dataSource.movies
    }
    
  

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //reload all the tableView
        
        
        self.tableView.reloadData()
    }
     /*
     
     override func viewWillAppear(_ animated: Bool) {
     super.viewWillAppear(animated)
     }
    
     
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addMovie))
        
        //pointer to a method
        
    }
    
    func addMovie(){
        //1) add the item to the datasource
        //2) notify the tableview about the changes.
        
        print("Selector Action performed")
        
        //move to the datasource

        
        let indexPath = dataSource.addNewMovie()
        //add to the datasource
        tableView.insertRows(at: [indexPath], with: .left)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieCell

        // Configure the cell...
        //1)get the movie (indexPath)
        let movie = movies[indexPath.row]
        
        cell.movieTitle.text = movie.title
        cell.poster.image = movie.image
        //TODO: DateFormatter()...!
        cell.movieDate.text = movie.date.description
        
        return cell
    }


    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
  
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dataSource.delete(at: indexPath)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)

        if !editing{
            print("Done" )
            
            for m in movies{
                print(m.title)
            }
        }
    }
   
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        //datasource move the item
        //delete
        let movie = dataSource.delete(at: fromIndexPath)
        
        
        
        dataSource.insert(movie, at: to)
    }
   

   
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    //static let mySegueName = "toEdit"
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //1) get the movie
        let movie = movies[indexPath.row]
        
        //2) performSegue*(
        performSegue(withIdentifier: "toEdit", sender: movie)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let dest = segue.destination as? MovieDetailsViewController,
            let movie = sender as? Movie{
            dest.movie = movie
        }
    }
   

}
