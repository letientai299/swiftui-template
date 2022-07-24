import ProjectDescription

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
        .external(name: "Inject")
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
    )
]

let project = Project(
  name: "App",
  organizationName: "tai.le",
  targets: iosTargets
)
