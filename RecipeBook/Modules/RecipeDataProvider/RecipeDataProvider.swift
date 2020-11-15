//
//  RecipeDataProvider.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

class RecipeDataProvider {

    func recipeData() -> [Recipe] {
        let recipes = [
            Recipe(name: "Cape Codder",
                   details: "Call it a vodka cranberry or a cape codder, either way, it's a simple, tasty drink. All you need is cranberry juice and a carefully chosen inexpensive bottle of vodka. If you feel like getting fancy, shake the duo and serve it \"up\" for a crantini.\n\nBuilding on that foundation, you can add a little to create other refreshing mixed drinks. For instance, add pineapple juice and you have a bay breeze, orange juice creates a madras, and grapefruit juice transforms it into a sea breeze.",
                   imageUrlString: "https://lp-cms-production.imgix.net/image_browser/Cape%20Codder.jpg?auto=compress&fit=crop&fm=auto&sharp=10&vib=20&w=1200"),

            Recipe(name: "Margarita and Daiquiri",
                   details: "The margarita is an incredibly simple drink of tequila, triple sec, and lime juice. While it is better with top-shelf spirits, there are good budget-friendly options that make an excellent drink, especially if you use fresh lime. There's no way to get bored with a margarita either! Shake it, blend it, or toss in some extra flavor. A bottle of tequila offers many possibilities, and there are several flavored margarita recipes to explore.",
                   imageUrlString: "https://cf.ltkcdn.net/cocktails/images/std/192409-425x376-Strawberry-daiquiri-cocktail_sized.jpg"),

            Recipe(name: "Daiquiri",
                   details: "The daiquiri is just as versatile as the margarita. Rum is even cheaper, and this recipe simply requires lime juice and simple syrup. Stick with the original cocktail or diversify your drinking experience with any flavor you can imagine.\n\nThe strawberry daiquiri is a favorite and either fresh or frozen berries will do. Toss a banana into the blender and you have a banana daiquiri. You can also add fruit and herbal flavors to the syrup and create some fascinating mixes like the rhubarb-rosemary daiquiri.",
                   imageUrlString: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/classic-lime-daiquiri-cocktail-royalty-free-image-1581775790.jpg"),

            Recipe(name: "Black Russian",
                   details: "Easy and delicious, the black Russian is one of the best drinks for a tight budget. Be sure to check your liquor store for coffee liqueurs that are cheaper than Kahlua.\n\nWith a few extras at hand, you can make any number of vodka drinks. Add cream and you have a white Russian, or use Irish cream for a mudslide. Top it with club soda for a Smith and Wesson, or cola for a Colorado bulldog. Whiskey makes it a sneaky Pete, while tequila's a great option for a dirty bird.",
                   imageUrlString: "https://images.immediate.co.uk/production/volatile/sites/30/2017/09/black-russian-cocktail-e89ea42.jpg"),
            
            Recipe(name: "Lemon Drop Martini",
                   details: "Vodka, lemon juice, and simple syrup combine for an elegant and low-cost drink. The zing of a freshly-made lemon drop martini is a pure pleasure. The syrup is nothing more than sugar and water, so it costs just pennies to make. Use the lilac lemon drop martini recipe as inspiration for infusing it with flavor and enjoy a whole new world of vodka martinis that taste just as good as those $12 cocktails at the bar.",
                   imageUrlString: "https://amandascookin.com/wp-content/uploads/2018/08/lemon-drop-cocktall-680.jpg")]

        return recipes
    }
}
