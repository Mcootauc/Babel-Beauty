//
//  DetailView.swift
//  Babel Cookbook
//
//  Created by Erin Hurlburt on 4/30/22.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .scale.combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
                )
    }
}

struct DetailView: View {
    var recipe: Recipe
    
    @State private var showDetail = false

    var body: some View {
        ScrollView {
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(recipe: Recipe(
            idMeal: 52855,
            strMeal: "Banana Pancakes",
            strCategory: "Dessert",
            strArea: "American",
            strSource: "https://www.bbcgoodfood.com/recipes/banana-pancakes"
            
        ))
    }
}
