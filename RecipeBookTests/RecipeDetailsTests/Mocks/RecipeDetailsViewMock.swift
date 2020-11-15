//
//  RecipeDetailsViewMock.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

@testable import RecipeBook

class RecipeDetailsViewMock {

    var isUpdateFuncCalled: Bool = false

    var title: String?
    var details: String?
    var imageUrlString: String?
}

//MARK:- RecipeDetailsViewProtocol
extension RecipeDetailsViewMock: RecipeDetailsViewProtocol {

    func updateWith(title: String?,
                    details: String?,
                    imageUrlString: String?) {
        isUpdateFuncCalled = true

        self.title = title
        self.details = details
        self.imageUrlString = imageUrlString
    }
}
