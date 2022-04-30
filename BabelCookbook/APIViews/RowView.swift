//
//  RowView.swift
//  Babel Cookbook
//
//  Created by Erin Hurlburt on 4/30/22.
//

import SwiftUI

let ARTWORK_HEIGHT = 30.0

struct RowView: View {
    var recipe: Recipe
    
    var body: some View {
        // Presumably this feels very familiar…
        HStack {
            //async?
            Text(recipe.strMeal)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(recipe: Recipe(
            idMeal: 52855,
            strMeal: "Banana Pancakes",
            strCategory: "Dessert",
            strArea: "American",
            strSource: "https://www.bbcgoodfood.com/recipes/banana-pancakes"
            
        ))
    }
}

