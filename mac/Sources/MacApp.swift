@_exported import Inject
import SwiftUI

@main
struct MacApp: App {
  @ObservedObject private var injectObserver = Inject.observer
  var body: some Scene {
    WindowGroup {
      ContentView()
        .frame(minWidth: 400, minHeight: 300)
        .enableInjection()
    }
  }
}

public struct ContentView: View {
  public var body: some View {
    Text("Hello!").padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
