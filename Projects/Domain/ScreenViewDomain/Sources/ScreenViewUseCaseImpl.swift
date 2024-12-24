import Foundation

import ScreenViewDomainInterface

final class ScreenViewUseCaseImpl: ScreenViewUseCase {
    private let repository: ScreenViewRepository
    
    init(repository: ScreenViewRepository) {
        self.repository = repository
    }
    
    func execute(_ input: any ScreenViewInput) {
        let className = NSStringFromClass(input.screenClass)
        let components = className.components(separatedBy: ".")
        
        guard let screenClass = components.last else { return }
        guard screenClass.count > 0 else { return }
        
        self.repository.send(
            screenName: input.screenType.rawValue,
            screenClass: screenClass
        )
    }
}
