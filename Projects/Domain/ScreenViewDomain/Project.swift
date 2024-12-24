import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: DomainModule.ScreenViewDomain.name,
    settings: .Module.default,
    targets: [
        .interface(
            domain: .ScreenViewDomain,
            dependencies: []
        ),
        .implementation(
            domain: .ScreenViewDomain,
            dependencies: [
                .domain(target: .ScreenViewDomain, type: .interface),
                .core(target: .AnalyticsCore, type: .interface),
            ]
        ),
        .testing(
            domain: .ScreenViewDomain,
            dependencies: [
                .domain(target: .ScreenViewDomain, type: .interface),
            ]
        ),
        .tests(
            domain: .ScreenViewDomain,
            dependencies: [
                .domain(target: .ScreenViewDomain, type: .implementation),
                .domain(target: .ScreenViewDomain, type: .testing),
            ]
        ),
    ]
)
