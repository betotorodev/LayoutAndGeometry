//
//  GeoView.swift
//  LayoutAndGeometry
//
//  Created by Beto Toro on 25/10/22.
//

import SwiftUI

struct OuterView: View {
  var body: some View {
    VStack {
      Text("Top")
      InnerView()
        .background(.green)
      Text("Bottom")
    }
  }
}

struct InnerView: View {
  var body: some View {
    HStack {
      Text("Left")
      GeometryReader { geo in
        Text("Center")
          .background(.blue)
          .onTapGesture {
            print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
            print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
            print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
          }
      }
      .background(.orange)
      Text("Right")
    }
  }
}

struct GeoView: View {
  var body: some View {
    OuterView()
      .background(.red)
      .coordinateSpace(name: "Custom")
  }
}

struct GeoView_Previews: PreviewProvider {
  static var previews: some View {
    GeoView()
  }
}
