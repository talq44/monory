import XCTest

@testable import ScreenViewDomain
@testable import ScreenViewDomainTesting

final class ScreenViewDomainTests: XCTestCase {
    
    private var repository: MockScreenViewRepository!
    private var sut: ScreenViewUseCaseImpl!
    
    override func setUpWithError() throws {
        self.repository = MockScreenViewRepository()
        self.sut = ScreenViewUseCaseImpl(repository: self.repository)
    }

    override func tearDownWithError() throws {
        self.sut = nil
        self.repository = nil
    }

    func test_given_viewcontroller_when_execute_then_isSend() {
        // given
        let vc = UIViewController()
        let input = StubScreenViewInput(
            screenClass: vc.classForCoder,
            screenType: .detail
        )
        
        // when
        self.sut.execute(input)
        
        // then
        XCTAssertTrue(
            (self.repository.screenClass?.count ?? 0) > 0,
            "일반적인 ViewController라면 전송이 되어야 합니다."
        )
        XCTAssertTrue(
            (self.repository.screenName?.count ?? 0) > 0,
            "일반적인 ViewController라면 전송이 되어야 합니다."
        )
    }
    
    func test_given_nil_when_execute_then_isSend() {
        // given
        let vc = UIViewController()
        let input = StubScreenViewInput(
            screenClass: vc.classForCoder,
            screenType: .detail
        )
        
        // when
        self.sut.execute(input)
        
        // then
        XCTAssertTrue(
            (self.repository.screenClass?.count ?? 0) > 0,
            "일반적인 ViewController라면 전송이 되어야 합니다."
        )
        XCTAssertTrue(
            (self.repository.screenName?.count ?? 0) > 0,
            "일반적인 ViewController라면 전송이 되어야 합니다."
        )
    }
}
