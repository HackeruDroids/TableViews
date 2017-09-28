//
//  MovieDataSource.swift
//  Tableviews
//
//  Created by hackeru on 8 Tishri 5778.
//  Copyright © 5778 hackeru. All rights reserved.
//

import UIKit


class MovieDataSource {
    var movies: [Movie] = []
    
    init(){
        let f = DateFormatter()
        f.dateFormat = "yyyy-MM-dd"
        
        
        movies.append(
            Movie(title: "King Arthur",
                  url: "https://itunes.apple.com/il/movie/king-arthur-legend-of-the-sword/id1230741267",
                  image: #imageLiteral(resourceName: "kingarthur"),
                  imageLink: "http://is2.mzstatic.com/image/thumb/Video117/v4/7b/cf/cc/7bcfcc70-b9bc-2f38-f598-2f88a967bdd2/pr_source.lsr/200x200bb.png",
                  date: f.date(from: "2018-11-10")!,
                  genre: "Action & Adventure")
        )
        
        movies.append(
            Movie(title: "Pirates of the Caribbean",
                  url: "https://itunes.apple.com/il/movie/king-arthur-legend-of-the-sword/id1230741267",
                  image: #imageLiteral(resourceName: "potc"),
                  imageLink: "http://is2.mzstatic.com/image/thumb/Video117/v4/7b/cf/cc/7bcfcc70-b9bc-2f38-f598-2f88a967bdd2/pr_source.lsr/200x200bb.png",
                  date: f.date(from: "2017-05-25")!,
                  genre: "Action & Adventure")
        )
        
        movies.append(
            Movie(title: "Hidden Figures",
                  url: "https://itunes.apple.com/il/movie/king-arthur-legend-of-the-sword/id1230741267",
                  image: #imageLiteral(resourceName: "hiddenfigures"),
                  imageLink: "http://is2.mzstatic.com/image/thumb/Video117/v4/7b/cf/cc/7bcfcc70-b9bc-2f38-f598-2f88a967bdd2/pr_source.lsr/200x200bb.png",
                  date: f.date(from: "2018-11-10")!,
                  genre: "Action & Adventure")
        )
        
        movies.append(
            Movie(title: "Wonder Woman",
                  url: "https://itunes.apple.com/il/movie/king-arthur-legend-of-the-sword/id1230741267",
                  image: #imageLiteral(resourceName: "wonderwoman"),
                  imageLink: "http://is2.mzstatic.com/image/thumb/Video117/v4/7b/cf/cc/7bcfcc70-b9bc-2f38-f598-2f88a967bdd2/pr_source.lsr/200x200bb.png",
                  date: f.date(from: "2018-11-10")!,
                  genre: "Action & Adventure")
        )
        
        movies.append(
            Movie(title: "Low Riders",
                  url: "https://itunes.apple.com/il/movie/king-arthur-legend-of-the-sword/id1230741267",
                  image: #imageLiteral(resourceName: "lowriders"),
                  imageLink: "http://is2.mzstatic.com/image/thumb/Video117/v4/7b/cf/cc/7bcfcc70-b9bc-2f38-f598-2f88a967bdd2/pr_source.lsr/200x200bb.png",
                  date: f.date(from: "2018-11-10")!,
                  genre: "Action & Adventure")
        )
    }
}






