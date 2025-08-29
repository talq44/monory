import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: CoreModule.DesignSystemCore.name,
    settings: .Module.default,
    targets: [
        .implementation(
            core: .DesignSystemCore,
            dependencies: [
                .core(target: .DesignSystemCore, type: .interface),
            ]
        )
    ]
)
