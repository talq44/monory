import SwiftUI

public enum ScreenClassType {
    case uiKit(ScreenTrackable)
    case swiftUI(any SwiftUI.View)
}
