//
//  SwiftUIView.swift
//  SwiftUIinUIKit
//
//  Created by Brandon Suarez on 9/6/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State var isOn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Toggle(isOn: $isOn) {
                        Text("Subscribe")
                    }
                    
                    Toggle(isOn: $isOn) {
                        Text("Subscribe")
                    }
                    
                    Toggle(isOn: $isOn) {
                        Text("Subscribe")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
