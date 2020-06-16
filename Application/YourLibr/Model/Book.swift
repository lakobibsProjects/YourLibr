//
//  Book.swift
//  YourLibrarium
//
//  Created by user166683 on 5/17/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation
import UIKit

public struct Book: Identifiable{
    public let id: UUID = UUID()
    let name: String
    var autor: [Author]
    var annotation: String?
    var comment: String?
    var genre: [Genre]
    var category: Category
    var image: UIImage?
    
    

}

extension Book{
    public enum Genre: String{
        case Detective
        case Drama
        case Fantasy
        case Adventure
        case Romance
        case Contemporary
        case Dystopian
        case Mystery
        case Horror
        case Thriller
        case Paranormal
        case Historical
        case Science
        case Memoir
        case Cooking
        case Art
        case SelfHelp
        case Development
        case Motivational
        case Health
        case History
        case Travel
        case Guide
    }
    
    public enum Category: String{
        case new
        case toBuy
        case wasReaded
        case favourites
        case isRead
        case loaned
    }
}
