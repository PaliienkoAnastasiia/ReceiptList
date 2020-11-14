//
//  RecipeListProtocols.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

protocol RecipeListWireframeProtocol: class {
    func showRecipeDetails(_ recipe: Recipe)
}

protocol RecipeListInteractorProtocol: class {
    func loadData(completion: ([Recipe])-> Void)
}

protocol RecipeListViewProtocol: class {
    func update(with recipes: [Recipe])
}

protocol RecipeListViewDelegate: class {
    func onViewDidLoad()
    func onReloadButtonTapped()
    func onRecipeSelected(_ recipe: Recipe)
}
