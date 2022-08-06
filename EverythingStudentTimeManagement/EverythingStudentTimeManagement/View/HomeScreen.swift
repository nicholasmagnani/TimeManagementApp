//
//  HomeScreen.swift
//  EverythingStudentTimeManagement
//
//  Created by Nicholas Magnani on 7/26/22.
//

import SwiftUI


    
struct HomeScreen: View {
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            //allows you to scroll down on screen and doesn't show bar
            LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]){
                Section{
                } header:{
                    HeaderView()
                }//Vertical stack of days
                //let days: [String] = ["Sun", "Mon", "Tues", "Wed", "Thur", "Fri", "Sat"]
                                
                /*VStack(spacing: 75){
                    ForEach(days, id: \.self){day in
                        Text(day)
                            .font(.title2)
                            .foregroundColor(.init(red: 0.851, green: 0.851, blue: 0.851))      .fontWeight(.bold)
                            .frame(maxWidth: 200)
                            .offset(x: -170, y: 40)
                    }*/
                    /*ForEach(days, id: \.self){day in
                            
                        Text(day)*/ //for future if u wanna update ui
                        
                    //}
                    //vertical stack of each day in order
                 //}
            }
        }
    }
}
    func HeaderView()->some View{
        HStack(spacing: 10){
    //horizontal stack of the logo and the title with the date
            Button{
            } label: {
                Image("1024")
                    .resizable()
                    .padding(0.0)
                    .frame(width: 85, height: 85)
                    .cornerRadius(30)
                    .offset(x: 10, y: 20)
                   
            }//Logo
            
            VStack(alignment: .leading, spacing: 0){
                Text("Time Manager")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.trailing)
                    .frame(maxWidth: 270, alignment: .topTrailing)
                    .foregroundColor(.white)
                    .offset(x: 0, y: 15)
                Text(Date().formatted(date: .abbreviated, time: .standard))
                    .font(.title3)
                .multilineTextAlignment(.trailing)
                .padding(.leading, 0.0)
                .frame(maxWidth: 180, alignment: .topTrailing)
                .offset(x: 90, y: 15)
                .foregroundColor(.white)
            }//States title and date in headingview
        }
        //.background(Color.init(red: 0.133, green: 0.157, blue: 0.192))
    }//home screen set background of dark blue
    
    

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }//preview of home screen
}


    

      

