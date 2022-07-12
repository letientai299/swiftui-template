import SwiftUI
import Inject

@main
struct HelloApp: App {
    @ObservedObject private var iO = Inject.observer

    var body: some Scene {
        WindowGroup {
            ContentView()
                .enableInjection()
        }
    }
}

public struct ContentView: View {
    public init() {}

    public var body: some View {
        Text("Hello, World! 2")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
