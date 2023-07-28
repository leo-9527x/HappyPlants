//
//  ContentView.swift
//  HappyPlants
//
//  Created by Robert Liu on 7/27/23.
//

//import SwiftUI
//
//struct ContentView: View {
//    @State private var plants = [Plant]()
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(plants) { plant in
//                    NavigationLink(destination: PlantDetailView(plant: plant)) {
//                        PlantRow(plant: plant)
//                    }
//                    .contextMenu {
//                        Button(action: {
//                            if let index = plants.firstIndex(of: plant) {
//                                updateWateringDate(at: index)
//                            }
//                        }) {
//                            Label("Mark as watered", systemImage: "checkmark")
//                        }
//                        Button(action: {
//                            if let index = plants.firstIndex(of: plant) {
//                                deletePlant(at: index)
//                            }
//                        }) {
//                            Label("Delete", systemImage: "trash")
//                        }
//                    }
//                }
//
//            }
//            .navigationTitle("Plants")
//            .navigationBarItems(trailing: NavigationLink(destination: AddPlantView(plants: $plants)) {
//                Image(systemName: "plus")
//            })
//        }
//    }
//
//    func updateWateringDate(at index: Int) {
//        var plantCopy = plants
//        plantCopy[index].nextWateringDate = Date().addingTimeInterval(86400.0 * Double(plants[index].wateringFrequency))
//        plants = plantCopy
//    }
//
//    func deletePlant(at index: Int) {
//        var plantCopy = plants
//        plantCopy.remove(at: index)
//        plants = plantCopy
//    }
//}
//
//struct PlantRow: View {
//    var plant: Plant
//
//    var body: some View {
//        HStack {
//            Circle()
//                .fill(plant.color)
//                .frame(width: 20, height: 20)
//            VStack(alignment: .leading) {
//                Text(plant.name)
//                    .font(.headline)
//                Text("Next watering date:")
//                    .font(.subheadline)
//                Text("\(plant.nextWateringDate, style: .date)")
//                    .font(.subheadline)
//                    .padding(.leading)
//            }
//        }
//    }
//}
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var plantStore: PlantStore

    var body: some View {
        NavigationView {
            List {
                ForEach(plantStore.plants) { plant in
                    NavigationLink(destination: PlantDetailView(plant: plant)) {
                        PlantRow(plant: plant)
                    }
                    .contextMenu {
                        Button(action: {
                            plantStore.updateWateringDate(plant)
                        }) {
                            Label("Mark as watered", systemImage: "checkmark")
                        }
                        Button(action: {
                            plantStore.removePlant(plant)
                        }) {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }
            .navigationTitle("Happy Plants 🪴")
            .navigationBarItems(trailing:
                NavigationLink(destination: AddPlantView()) {
                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                        .background(Color.black)
                        .clipShape(Circle())
                }
            )
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Spacer()
                        Text("Happy Plants 🪴").font(.largeTitle).foregroundColor(Color.black)
                        Spacer()
                    }
                }
            }
        }
    }
}


struct PlantRow: View {
    var plant: Plant

    var body: some View {
        HStack {
            Circle()
                .fill(plant.color)
                .frame(width: 20, height: 20)
            VStack(alignment: .leading) {
                Text(plant.name)
                    .font(.headline)
                Text("Next watering date:")
                    .font(.subheadline)
                Text("\(plant.nextWateringDate, style: .date)")
                    .font(.subheadline)
                    .padding(.leading)
            }
        }
    }
}

