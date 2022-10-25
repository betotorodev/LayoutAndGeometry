//
//  PositionView.swift
//  LayoutAndGeometry
//
//  Created by Beto Toro on 25/10/22.
//

import SwiftUI

struct PositionView: View {
  var body: some View {
    Text("Hello, world!")
      .position(x: 100, y: 100)
      .background(.red)
  }
}

struct PositionView_Previews: PreviewProvider {
  static var previews: some View {
    PositionView()
  }
}
