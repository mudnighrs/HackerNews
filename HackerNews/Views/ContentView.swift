//
//  ContentView.swift
//  HackerNews
//
//  Created by Lakshaya Singh Tanwar on 06/07/25.
//

import SwiftUI

struct ContentView: View {
    // subscrible to recieve updates from  networkmanager 
   @ObservedObject var networkManager:NetworkManger=NetworkManger()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                }
                }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            networkManager.fetchData()
        }// like viewDidLoad
    }
}

#Preview {
    ContentView()
}
//Identifiable - allows list to identify order of post object based on id
//
//
//let posts = [
//    
//    Post(id:"1",title :"hello"),
//    Post(id:"2",title :"akhsvchvj"),
//    Post(id:"3",title :"=ajdsh jh"),
//    Post(id:"4",title :"sjkdbvl")
//    
//]
