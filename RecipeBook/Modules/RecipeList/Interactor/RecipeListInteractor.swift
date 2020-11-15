//
//  RecipeListInteractor.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

final class RecipeListInteractor {

    private var dataProvider: RecipeDataProvider

    init(dataProvider: RecipeDataProvider) {
        self.dataProvider = dataProvider
    }
}

//MARK:- RecipeListInteractorProtocol
extension RecipeListInteractor: RecipeListInteractorProtocol {

    func loadData(completion: ([Recipe]) -> Void) {
        let recipes = dataProvider.recipeData()
        completion(recipes)
    }
}
