import ProjectDescription
let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(
            url: "https://github.com/krzysztofzablocki/Inject.git",
            requirement: .upToNextMajor(from: "1.1.1")
        ),
    ],
    platforms: [.iOS]
)
