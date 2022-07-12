import ProjectDescription
import ProjectDescription

let project = Project(
    name: "App",
    organizationName: "tai.le",
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "tai.le.app",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
            infoPlist: .default,
            sources: ["Targets/App/Sources/**"],
            dependencies: [
                .external(name: "Inject"),
            ]
        ),
    ]
)
