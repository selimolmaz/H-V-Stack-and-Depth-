//
//  ContentView.swift
//  Lesson2
//
//  Created by Selim Olmaz on 15.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemRed).ignoresSafeArea()
            
            //alt + cmd and <- is fold code snippets
            VStack(alignment: .leading, spacing: 20.0) {
                
                Image("monke")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("Monke")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    // Rate and Reviews
                    VStack {
                        HStack{
                            //SFsymbols 4 for images and symbols
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.fill")
                            Image(systemName: "star")
                        }
                        //Reviews
                        Text("(Reviews: 234)")
                    }.foregroundColor(.orange)
                        .font(.caption)
                    }
                // Cover Letter
                Text("Come to visit us, The monke will likes you if you come along with some snacks. It is gonna happy with that :3")
                // symbols
                HStack{
                    Spacer()
                    Image(systemName: "binoculars")
                    Image(systemName: "fork.knife")
                } .foregroundColor(.gray)
                    .font(.caption)
                
            }
            .padding()
            .background(Rectangle().foregroundColor(.white).cornerRadius(15).shadow(radius: 15))
            // if there is a second padding elements its automaticly padding outside
            .padding(15)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
