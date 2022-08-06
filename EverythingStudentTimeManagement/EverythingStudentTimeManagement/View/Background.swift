//
//  Background.swift
//  EverythingStudentTimeManagement
//
//  Created by Nicholas Magnani on 7/27/22.
//

import SwiftUI

struct Background: View {
    
    var body: some View {
        
        ZStack{
        
            /*Triangle()
            
                .fill(Color.init(red: 34, green: 40, blue: 100))*/
    
                //.background(Color.init(red: 217, green: 217, blue: 217))
        
                /*.frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
        
            triangle()
                .fill(Color.init(red: 34, green: 40, blue: 100))
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)*/
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .fill(Color.init(red: 51/255, green: 48/255, blue: 228/255))
                .frame(height: 750)
                .offset(x: 0, y: -20)
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .fill(Color.init(red: 246/255, green: 55/255, blue: 236/255))
                .frame(height: 600)
                .offset(x: 0, y: 10)
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .fill(Color.init(red: 251/255, green: 180/255, blue: 84/255))
                .frame(height: 400)
                .offset(x: 0, y: 160)
            
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .fill(Color.init(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.3))
                .frame(width: 370, height: 200)
                .offset(x: 0, y: -165)
                
                //.fill(Color.init(red: 0, green: 122, blue: 12))
            /*Rectangle()
                .foregroundColor(Color.init(red: 250/255, green: 234/255, blue: 72/255))
                .frame(width: 20, height: 825)
                .offset(x: 150)*/
            
    }
}
/*struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
            

        return path
    }
}

struct triangle: Shape {
    func path(in rect: CGRect) -> Path {
        
        var secondPath = Path()
        
        secondPath.move(to: CGPoint(x: rect.minX, y: rect.minY))
        secondPath.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        secondPath.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        secondPath.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
            

        return secondPath
    }
}
}*/

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
            .background(Color.init(red: 217, green: 217, blue: 217))
    }
}

}
