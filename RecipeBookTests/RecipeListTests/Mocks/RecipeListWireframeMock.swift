//
//  RecipeListWireframeMock.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

@testable import RecipeBook

class RecipeListWireframeMock {

    var isShowRecipeDetailsFuncCalled: Bool = false
}

//MARK:- RecipeListWireframeProtocol
extension RecipeListWireframeMock: RecipeListWireframeProtocol {

    func showRecipeDetails(_ recipe: Recipe) {
        isShowRecipeDetailsFuncCalled = true
    }
}
