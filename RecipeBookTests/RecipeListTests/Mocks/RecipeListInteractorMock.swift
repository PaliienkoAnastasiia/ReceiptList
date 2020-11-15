//
//  RecipeListInteractorMock.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

@testable import RecipeBook

class RecipeListInteractorMock {

    var isLoadDataFuncCalled: Bool = false
}

//MARK:- RecipeListInteractorProtocol
extension RecipeListInteractorMock: RecipeListInteractorProtocol {

    func loadData(completion: ([Recipe]) -> Void) {
        isLoadDataFuncCalled = true
        completion([])
    }
}
