//
//  RecipeListWireframe.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

final class RecipeListWireframe {

    weak var viewController: RecipeListViewController?
}

//MARK:- RecipeListWireframeProtocol
extension RecipeListWireframe: RecipeListWireframeProtocol {

    func showRecipeDetails(_ recipe: Recipe) {
    }
}
