//
//  RecipeFeatureView.swift
//  L15 RecipeDetail List App
//
//  Created by Thi Thi on 20/04/2022.
//

import SwiftUI

struct RecipeFeatureView: View {
    
    @EnvironmentObject var modle: RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Feature Recipes")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            
            GeometryReader{ geo in
            
            TabView {
                // Loop through each recipe
                ForEach(0..<modle.recipes.count) { index in
                    
                    // only show those that should be feature
                    if modle.recipes[index].featured == true {
                        
                        // Recipe card
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                            
                            VStack {
                                Image(modle.recipes[index].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                Text(modle.recipes[index].name)
                                    .padding(5)
                                
                            }
                        }
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                        .cornerRadius(15)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                        
                    }
                
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                            
        }
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Preparation Time")
                    .font(.headline)
                Text("1 hour")
                
                Text("Highlight")
                    .font(.headline)
                Text("Healthy, Hearty")
                
            }
            .padding([.leading, . bottom])
            
            
        }
    }
 
}

struct RecipeFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeatureView()
            .environmentObject(RecipeModel())

    }
}
