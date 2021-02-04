//
//  AddHabit.swift
//  HWS Habit Tracker
//
//  Created by Dustin Olsen on 2/4/21.
//

import SwiftUI

struct AddHabit: View {
    
    @State private var name = ""
    @State private var description = ""
    
    @ObservedObject var habits: HabitData
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Description", text: $description)
                    .frame(width: 300, height: 300)
            }
            .navigationBarTitle("Add new habit")
            .navigationBarItems(trailing: Button("Save") {
                let newHabit = TrackedHabits(habitName: name, habitDescription: description, habitCount: 0)
                self.habits.habitList.append(newHabit)
            })
        }
        
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit(habits: HabitData())
    }
}
