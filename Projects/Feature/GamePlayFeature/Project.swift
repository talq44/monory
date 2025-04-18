import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: FeatureModule.GamePlayFeature.name,
    settings: .Module.default,
    targets: [
        .interface(
            feature: .GamePlayFeature,
            dependencies: []
        ),
        .implementation(
            feature: .GamePlayFeature,
            dependencies: [
                .SPM.ComposableArchitecture,
                .feature(target: .GamePlayFeature, type: .interface),
            ]
        ),
        .testing(
            feature: .GamePlayFeature,
            dependencies: [
                .feature(target: .GamePlayFeature, type: .interface),
            ]
        ),
        .tests(
            feature: .GamePlayFeature,
            dependencies: [
                .SPM.ComposableArchitecture,
                .feature(target: .GamePlayFeature, type: .implementation),
                .feature(target: .GamePlayFeature, type: .testing),
            ]
        ),
        .demo(
            feature: .GamePlayFeature,
            dependencies: [
                .SPM.ComposableArchitecture,
                .feature(target: .GamePlayFeature, type: .implementation),
                .feature(target: .GamePlayFeature, type: .testing),
            ]
        ),
    ]
)
