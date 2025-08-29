//
//  MDSPickerView.swift
//  DesignSystemCore
//
//  Created by 박창규 on 8/29/25.
//

import SwiftUI

struct MDSPickerView: View {
    let items: [String]
    let onSelection: (Int, String) -> Void
    @State private var selectedIndex: Int = 0

    var body: some View {
        Picker("선택", selection: $selectedIndex) {
            ForEach(items.indices, id: \.self) { index in
                Text(items[index]).tag(index)
            }
        }
        .pickerStyle(.wheel)
        .onChange(of: selectedIndex) { newIndex in
            onSelection(newIndex, items[newIndex])
        }
    }
}

#Preview {
    MDSPickerView(items: ["사과", "배", "포도"]) { index, item in
        print("선택됨: \(index) - \(item)")
    }
}
