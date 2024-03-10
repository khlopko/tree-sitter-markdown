// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "TreeSitterMarkdown",
    products: [
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterMarkdown",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "grammar.js",
                    "LICENSE",
                    "package.json",
                    "README.md",
                    "src/grammar.json",
                    "src/node-types.json",
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.cc",
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
