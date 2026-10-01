import Playgrounds
import SwiftUI

#Playground {
    
    struct ContentView: View {
        @State private var text = "Hello!"
        @State private var disabled = false
        
        var body: some View {
            VStack(spacing: 10) {
                
                Text(text)
                    .font(.largeTitle)
                
                Button("Hello") {
                    text = "Hello!"
                }
                
                Button("Goodbye") {
                    text = "Goodbye!"
                }
                
                Button("Red") {
                    text = "Red Button!"
                }
                .foregroundColor(.red)
                
                Button("Blue") {
                    text = "Blue Button!"
                }
                .foregroundColor(.blue)
                
                Button("Big Button") {
                    text = "Big!"
                }
                .font(.title)
                
                Button("Small Button") {
                    text = "Small!"
                }
                .font(.caption)
                
                // Icon button
                Button {
                    text = "Heart!"
                } label: {
                    Image(systemName: "heart.fill")
                }
                
                Button("Star") {
                    text = "Star!"
                }
                
                // Disabled sometimes
                Button("Disabled Button") {
                    text = "You clicked it!"
                }
                .disabled(disabled)
                
                Button("Disable") {
                    disabled = true
                }
            }
            .padding()
        }
    }
    
    #Preview {
        ContentView()
    }
    
}
