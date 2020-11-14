//
//  Recipe.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

class Recipe {

    let name: String
    let details: String?
    let imageUrlString: String?

    init(name: String,
         details: String?,
         imageUrlString: String?) {
        self.name = name
        self.details = details
        self.imageUrlString = imageUrlString
    }
}
