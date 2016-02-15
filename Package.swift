import PackageDescription

let package = Package(
    name: "HTSLibExample",
    dependencies: [
        .Package(url: "https://github.com/jstjohn/swift-c-htslib.git", majorVersion: 1)
    ]
)

