//
//  RecipeDetailsInteractorMock.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

@testable import RecipeBook

class RecipeDetailsInteractorMock {

    var isRecipeVarGetterWasCalled: Bool = false
}

//MARK:- RecipeDetailsInteractorProtocol
extension RecipeDetailsInteractorMock: RecipeDetailsInteractorProtocol {

    var recipe: Recipe {
        isRecipeVarGetterWasCalled = true
        return Recipe(name: "Name", details: "Details", imageUrlString: "ImageUrlString")
    }
}
