//
//  DateChoice.swift
//  EverythingStudentTimeManagement
//
//  Created by Nicholas Magnani on 7/26/22.
//

import SwiftUI

struct DateChoice: View {
    
    @State var selectedDate: Date = Date()
    @State var current_date = Date()
    
    let startingDate: Date = Date()
    let endingDate: Date = Calendar.current.date(byAdding: .year, value: 2, to: Date())!
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
        /*var limitRange: ClosedRange<Date> {
            let tenDaysAgo = Calendar.current.date(byAdding: .day, value: -10, to: Date())!
            let threeWeeksFromNow = Calendar.current.date(byAdding: .day, value: 21,to: Date())!
            
            return tenDaysAgo...threeWeeksFromNow
        }*/ //for future use if you want to change ui of the program
        
    
    
    var body: some View {
        VStack{
            Text("")
                .font(.headline)
                .offset(x: 20, y: -50)
            Text(dateFormatter.string(from: selectedDate))
                .accentColor(Color.red)
                .font(.headline)
                .offset(x: 40, y: 180)
            
            
            DatePicker(" ",selection: $selectedDate, in: (startingDate...endingDate))
                .datePickerStyle(.graphical)
            
            .offset(x: 0, y: 130)
            .accentColor(Color.init(red: 51/255, green: 48/255, blue: 228/255))
        }
    }


        struct DateChoice_Previews: PreviewProvider {
            static var previews: some View {
                DateChoice()
                Background()
        }
    }
    
    /*func span(date: Date, format: String)->String{
        let tenDaysAgo = Calendar.current.date(byAdding: .day, value: -10, to: Date())!
        let threeWeeksFromNow = Calendar.current.date(byAdding: .day, value: 21,to: Date())!
        
        let span = (tenDaysAgo...threeWeeksFromNow)
        
        
    
    }
    
    func extractDate(date: Date, format: String) -> String{
        let oformatter = DateFormatter()
        
        oformatter.dateFormat = format
        
        return oformatter.string(from:date)
    }*/ //for future use
}
