import ProjectDescription

let macTargets = [
  Target(
    name: "MacApp",
    platform: .macOS,
    product: .app,
    bundleId: "tai.le.app",
    deploymentTarget: .macOS(targetVersion: "12.3"),
    infoPlist: .default,
    sources: ["Targets/MacApp/Sources/**"],
    dependencies: [
      .package(product: "Inject")
    ],
    settings: Settings.settings(configurations: [
      .debug(name: "Debug", xcconfig: Path("Configs/Debug.xcconfig"))
    ])
  ),
  Target(
    name: "MacAppTests",
    platform: .macOS,
    product: .unitTests,
    bundleId: "tai.le.appTests",
    infoPlist: .default,
    sources: ["Targets/MacApp/Tests/**"],
    dependencies: [
      .target(name: "MacApp")
    ]
  ),
]

let iosTargets = [
  Target(
    name: "App",
    platform: .iOS,
    product: .app,
    bundleId: "tai.le.app",
    deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
    infoPlist: .default,
    sources: ["Targets/App/Sources/**"],
    dependencies: [
      .package(product: "Inject")
    ],
    settings: Settings.settings(configurations: [
      .debug(name: "Debug", xcconfig: Path("Configs/Debug.xcconfig"))
    ])
  ),
  Target(
    name: "AppTests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "tai.le.appTests",
    infoPlist: .default,
    sources: ["Targets/App/Tests/**"],
    dependencies: [
      .target(name: "App")
    ]
  ),
]

let project = Project(
  name: "App",
  organizationName: "tai.le",
  packages: [
    .remote(
      url: "https://github.com/krzysztofzablocki/Inject.git",
      requirement: .upToNextMinor(from: "1.2.0")
    )
  ],
  targets: macTargets + iosTargets
)
