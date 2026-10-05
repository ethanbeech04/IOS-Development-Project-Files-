import Playgrounds
import Foundation
import SwiftUI

#Playground {
    

    struct Game: Identifiable {
        let id = UUID()
        let title: String
        let genre: String
        let installed: Bool
    }

    struct ContentView: View {
        @State private var games: [Game] = [
            Game(title: "Stardew Valley", genre: "Simulation", installed: true),
            Game(title: "Minecraft", genre: "Sandbox", installed: true),
            Game(title: "Hades", genre: "Action", installed: false),
            Game(title: "Celeste", genre: "Platformer", installed: true),
            Game(title: "Portal 2", genre: "Puzzle", installed: false),
            Game(title: "Mario Kart 8", genre: "Racing", installed: true),
            Game(title: "Hollow Knight", genre: "Metroidvania", installed: false),
            Game(title: "Animal Crossing", genre: "Simulation", installed: false)
        ]

        @State private var filterSelection = "All"

        let filterOptions = ["All", "Installed", "Uninstalled"]

        var filteredGames: [Game] {
            switch filterSelection {
            case "Installed":
                return games.filter { $0.installed }
            case "Uninstalled":
                return games.filter { !$0.installed }
            default:
                return games
            }
        }

        var body: some View {
            VStack {
                Picker("Filter", selection: $filterSelection) {
                    ForEach(filterOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(.segmented)
                .padding()

                List {
                    ForEach(filteredGames) { game in
                        VStack(alignment: .leading) {
                            Text(game.title)
                                .font(.headline)

                            Text(game.genre)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)

                            Text(game.installed ? "Installed" : "Not Installed")
                                .font(.caption)
                                .foregroundStyle(game.installed ? .green : .red)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
        }
    }
    
    #Preview {
        ContentView()
    }
}
