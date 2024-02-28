//
//  TodoListApp.swift
//  TodoList
//
//  Created by dev.bones on 2/19/24.
//

import SwiftUI

/*
 MVVM Architechture
 
 Model - data point
 View - UI
 ViewModel - manages models for View
 
 
 Questions:
 ☐ What are Views?
 ☐ What is MVVM Architecture?
 ☐ What are Navigation Views?
 ☐ What are immutable structs?
 ☐ What are the the @State and @Enviornment/@EnviornmentObject for ?
 ☐ What does making a struct conform to Identifiable and Codable do?
 ☐ What does decoding and encoding mean?
 ☐ Why do you need json in your project for data?
 ☐ What does didSet do?
 ☐ Should you store everything in variables, and what are the best times to?
 ☐ What are guard statements? example guard let
 ☐ What does .self mean?
 ☐ What are some examples of arrays in modern day applications?
 ☐ What does logic look like in an application and why is it needed? examples of modern day logicx in applications
 ☐ Can you change the launch screen duration?
 ☐ How to make AppIcons?
 ☐ How to identify a deployment ready app by apple guidelines?
 ☐ When and where to use storyboards in your application?
 ☐ What are storyboards?
 ☐ Can you use both UIKit and SwiftUI in your project?
 

 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
            
        }
    }
}
