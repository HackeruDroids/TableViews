//
//  MovieDetailsViewController.swift
//  Tableviews
//
//  Created by hackeru on 8 Tishri 5778.
//  Copyright © 5778 hackeru. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    //stored property (*explicitly unwrapped)
    var movie:Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(movie)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
