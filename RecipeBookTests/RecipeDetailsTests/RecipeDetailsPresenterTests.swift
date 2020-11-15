//
//  RecipeDetailsPresenterTests.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import XCTest
@testable import RecipeBook

class RecipeDetailsPresenterTests: XCTestCase {

    var presenter: RecipeDetailsPresenter!
    var viewMock: RecipeDetailsViewMock!
    var interactorMock: RecipeDetailsInteractorMock!

    override func setUp() {
        interactorMock = RecipeDetailsInteractorMock()
        viewMock = RecipeDetailsViewMock()
        presenter = RecipeDetailsPresenter(with: interactorMock,
                                           view: viewMock)
    }

    override func tearDown() {
        interactorMock = nil
        viewMock = nil
        presenter = nil
    }

    func test_callInteractorForRecipe_onViwDidLoad() {
        //when
        presenter.onViewDidLoad()

        //then
        XCTAssertTrue(interactorMock.isRecipeVarGetterWasCalled)
    }

    func test_isViewUpdated_onViewDidLoad() {
        //when
        presenter.onViewDidLoad()

        //then
        XCTAssertTrue(viewMock.isUpdateFuncCalled)
    }

    func test_isViewUpdated_withCorrectData_onViewDidLoad() {
        //when
        presenter.onViewDidLoad()

        //then
        let recipe = interactorMock.recipe

        XCTAssertEqual(viewMock.title, recipe.name)
        XCTAssertEqual(viewMock.details, recipe.details)
        XCTAssertEqual(viewMock.imageUrlString, recipe.imageUrlString)
    }
}
