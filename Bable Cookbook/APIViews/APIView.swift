//
//  APIView.swift
//  Babel Cookbook
//
//  Created by Erin Hurlburt on 4/30/22.
//
import SwiftUI

struct recipeCategory {
    let label: String
    let type: String
}

struct APIView: View {
    let SEARCHABLE_CATEGORIES = [
        recipeCategory(label: "Breakfast", type: "breakfast"),
        recipeCategory(label: "Lunch", type: "lunch"),
        recipeCategory(label: "Dinner", type: "dinner"),
        recipeCategory(label: "Dessert", type: "dessert")
    ]
    
    
    @State var strMeal: String = ""
    @State  var strCategory = "dinner"
    @State var strArea = ""
    

    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter Name ", text: $strMeal)
                //Text("Status: \(status)")
                //Text("Searching for:")
                //Text(status)
                    //.bold()
                    //.italic()
                TextField("Enter Area ", text: $strArea)
                //Text("Species: \(species)")
                //Text(species)
                    //.bold()
                    //.italic()
            }
            .padding(.horizontal)
            .padding()
            
            Picker("", selection: $strCategory) {
                ForEach(SEARCHABLE_CATEGORIES, id: \.type) {
                    searchableCategory in Text(searchableCategory.label)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)

            ListView(searchMeal: strMeal, searchCategory: strCategory, searchArea: strArea)

              
        }
    }
}


struct APIView_Previews: PreviewProvider {
    static var previews: some View {
        APIView()
    }
}
