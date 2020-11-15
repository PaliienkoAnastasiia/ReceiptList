//
//  RecipeDetailsInteractor.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

final class RecipeDetailsInteractor {

    let recipe: Recipe

    init(recipe: Recipe) {
        self.recipe = recipe
    }
}

extension RecipeDetailsInteractor: RecipeDetailsInteractorProtocol {
}
