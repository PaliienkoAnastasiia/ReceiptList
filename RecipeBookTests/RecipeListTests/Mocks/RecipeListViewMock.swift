//
//  RecipeListViewMock.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

@testable import RecipeBook

class RecipeListViewMock {

    var isUpdateWithRecipesFuncCalled: Bool = false
}

//MARK:- RecipeListViewProtocol
extension RecipeListViewMock: RecipeListViewProtocol {

    func update(with recipes: [Recipe]) {
        isUpdateWithRecipesFuncCalled = true
    }

    func showLoader(_ show: Bool) {
    }
}
