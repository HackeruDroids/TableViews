//
//  Movie.swift
//  Tableviews
//
//  Created by hackeru on 8 Tishri 5778.
//  Copyright © 5778 hackeru. All rights reserved.
//

import UIKit

class Movie : CustomStringConvertible{
    var title:String
    let url:String
    let image:UIImage //the real image
    let imageLink:String //link to download the image
    let date: Date
    let genre: String
    
    init(title:String, url:String, image:UIImage, imageLink:String, date: Date, genre:String) {
        self.title = title
        self.url = url
        self.image = image
        self.imageLink = imageLink
        self.date = date
        self.genre = genre
    }

    //toString()
    var description: String{
        return "Title: \(title)\nDate: \(date)"
    }
}



