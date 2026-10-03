// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PetAdoptionSystem",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "PetAdoptionSystem",
            targets: ["PetAdoptionSystem"]
        )
    ],
    targets: [
        .executableTarget(
            name: "PetAdoptionSystem",
            path: "Sources"
        )
    ]
)
