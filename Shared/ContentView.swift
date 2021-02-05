//
//  ContentView.swift
//  Shared
//
//  Created by Dustin Olsen on 2/4/21.
//

import SwiftUI

struct ContentView: View {
    
    func removeItems(at offsets: IndexSet) {
        displayableActivities.habitList.remove(atOffsets: offsets)
    }
    
    @ObservedObject var displayableActivities = HabitData()
    @State private var showingNewHabit = false
    
    var body: some View {
        
        NavigationView {
                
            Form {
                ForEach(displayableActivities.habitList)  { habit in
                    HStack {
                        Text(habit.habitName)
                        Spacer()

//                        Text("\(habit.habitCount)")
                        
                        Button(action: {
//                            habit.habitCount += 1
                        }) {
                            Text("asdfasdf")
                        }
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Habit Tracker")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                self.showingNewHabit = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingNewHabit) {
                AddHabit(habits: self.displayableActivities)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
