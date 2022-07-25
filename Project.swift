import Foundation
import ProjectDescription

let projectName = FileManager()
    .currentDirectoryPath
    .components(separatedBy: "/")
    .last!

let macTargets = [
  Target(
    name: "mac",
    platform: .macOS,
    product: .app,
    bundleId: "tai.le.app",
    deploymentTarget: .macOS(targetVersion: "12.3"),
    infoPlist: .default,
    sources: ["mac/Sources/**"],
    dependencies: [
      .package(product: "Inject")
    ],
    settings: Settings.settings(configurations: [
      .debug(name: "Debug", xcconfig: Path("Configs/Debug.xcconfig"))
    ])
  ),
  Target(
    name: "macTests",
    platform: .macOS,
    product: .unitTests,
    bundleId: "tai.le.appTests",
    infoPlist: .default,
    sources: ["mac/Tests/**"],
    dependencies: [
      .target(name: "mac")
    ]
  ),
]

let iosTargets = [
  Target(
    name: "iOS",
    platform: .iOS,
    product: .app,
    bundleId: "tai.le.app",
    deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
    infoPlist: .default,
    sources: ["iOS/Sources/**"],
    dependencies: [
      .package(product: "Inject")
    ],
    settings: Settings.settings(configurations: [
      .debug(name: "Debug", xcconfig: Path("Configs/Debug.xcconfig"))
    ])
  ),
  Target(
    name: "iOSTests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "tai.le.appTests",
    infoPlist: .default,
    sources: ["iOS/Tests/**"],
    dependencies: [
      .target(name: "iOS")
    ]
  ),
]

let project = Project(
  name: projectName,
  organizationName: "tai.le",
  packages: [
    .remote(
      url: "https://github.com/krzysztofzablocki/Inject.git",
      requirement: .upToNextMinor(from: "1.2.0")
    )
  ],
  targets: macTargets + iosTargets
)
