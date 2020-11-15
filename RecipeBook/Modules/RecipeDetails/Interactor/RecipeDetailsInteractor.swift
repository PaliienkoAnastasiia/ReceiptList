//
//  RecipeDetailsInteractor.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

final class RecipeDetailsInteractor {

    private let aRecipe: Recipe

    init(recipe: Recipe) {
        self.aRecipe = recipe
    }
}

extension RecipeDetailsInteractor: RecipeDetailsInteractorProtocol {
    
    var recipe: Recipe {
        return aRecipe
    }

}
