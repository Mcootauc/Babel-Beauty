//
//  Recipe.swift
//  Babel Cookbook
//
//  Created by Erin Hurlburt on 4/30/22.
//

import Foundation

struct Recipe: Hashable, Codable {
    var idMeal: Int
    var strMeal: String
    var strCategory: String
    var strArea: String
    var strSource: String
    
}


struct RecipeSearchPage: Hashable, Codable {
    var results: [Recipe]
}

