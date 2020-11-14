//
//  RecipeListInteractor.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

final class RecipeListInteractor {

    private let recipes: [Recipe] =
        [Recipe(name: "Name1", details: "Details1", imageUrlString: "Urls1"),
         Recipe(name: "Name2", details: "Details2", imageUrlString: "Urls2"),
         Recipe(name: "Name3", details: "Details3", imageUrlString: "Urls3")]
}

//MARK:- RecipeListInteractorProtocol
extension RecipeListInteractor: RecipeListInteractorProtocol {

    func loadData(completion: ([Recipe]) -> Void) {
        completion(recipes)
    }
}
