import Foundation

public enum RestAPIError: Error, Equatable {
    
    public init(statusCode: Int) {
        guard let statusCodeType = HTTPStatusCode(rawValue: statusCode) else {
            self = .serializationFailed
            return
        }
        
        guard statusCodeType.responseType != .success else {
            self = .serializationFailed
            return
        }
        
        guard statusCodeType.responseType == .clientError else {
            self = .unDefined
            return
        }
        
        self = .restAPIError(statusCode: statusCode)
    }
    
    /// status code 유형에 따른 실패
    case restAPIError(statusCode: Int)
    /// mapping 실패
    case serializationFailed
    /// 중복 요청
    case duplicateRequest
    /// 네트워크 연결 실패
    case networkNotConnect
    /// 요청 시간 초과
    case timeOut
    /// 알수없는
    case unDefined
    
    public var localizedDescription: String {
        switch self {
        case .restAPIError(let statusCode):
            return "rest api error statuscode = \(statusCode)"
        case .serializationFailed:
            return "serializationFailed"
        case .duplicateRequest:
            return "duplicateRequest"
        case .networkNotConnect:
            return "networkNotConnect"
        case .timeOut:
            return "timeOut"
        case .unDefined:
            return "unDefined"
        }
    }
    
    public var statusCode: Int {
        switch self {
        case .restAPIError(let statusCode):
            return statusCode
        case .serializationFailed:
            return 1001
        case .duplicateRequest:
            return 1002
        case .networkNotConnect:
            return 1003
        case .timeOut:
            return 408
        case .unDefined:
            return 1000
        }
    }
}
