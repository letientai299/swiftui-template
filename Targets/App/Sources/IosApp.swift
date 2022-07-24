@_exported import Inject
import SwiftUI

@main
struct HelloApp: App {
  @ObservedObject private var injectObserver = Inject.observer
  var body: some Scene {
    WindowGroup {
      ContentView().enableInjection()
    }
  }
}

public struct ContentView: View {
  public var body: some View {
    Text("Hello, World!").padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
