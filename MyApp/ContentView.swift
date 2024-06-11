import SwiftUI

struct ContentView: View {
    @State private var text = "Hello, SwiftUI!"
    
    var body: some View {
        VStack {
            Text(text)
                .accessibilityIdentifier("MyLabel")
            Button(action: {
                self.text = "Hello, World!"
            }) {
                Text("Tap me")
            }
            .accessibilityIdentifier("MyButton")
            .padding()
            
            Button("TAP 4") {
                print("TAP 3")
            }
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
