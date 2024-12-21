//
//  TargetDependency+SPM+Template.swift
//  Manifests
//
//  Created by 박창규 on 11/20/24.
//

import ProjectDescription

public extension TargetDependency {
    
    enum SPM {
        // DI
        public static let swinject: TargetDependency = .external(name: "Swinject")
        
        // UI
        public static let snapKit: TargetDependency = .external(name: "SnapKit")
        public static let kingfisher: TargetDependency = .external(name: "Kingfisher")
        
        // Rx
        public static let rxSwift: TargetDependency = .external(name: "RxSwift")
        public static let rxCocoa: TargetDependency = .external(name: "RxCocoa")
        public static let reactorKit: TargetDependency = .external(name: "ReactorKit")
        
        // Data
        public static let alamofire: TargetDependency = .external(name: "Alamofire")
        public static let moya: TargetDependency = .external(name: "Moya")
        public static let realmSwift: TargetDependency = .external(name: "RealmSwift")
        public static let realm: TargetDependency = .external(name: "Realm")
        
        // Testable
        public static let fakery: TargetDependency = .external(name: "Fakery")
        public static let swiftDotEnv: TargetDependency = .external(name: "SwiftDotEnv")
    }
}
