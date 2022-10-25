//
//  AlignmentView.swift
//  LayoutAndGeometry
//
//  Created by Beto Toro on 24/10/22.
//

import SwiftUI

// a strange way to make a custom alignment
extension VerticalAlignment {
  struct MidAccountAndName: AlignmentID {
    static func defaultValue(in d: ViewDimensions) -> CGFloat {
      d[.top]
    }
  }
  
  static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct AlignmentView: View {
  var body: some View {
    
    //    HStack {
    //      Text("Live")
    //        .font(.caption)
    //      Text("long")
    //      Text("and")
    //        .font(.title)
    //      Text("prosper")
    //        .font(.largeTitle)
    //    }
    
    //    VStack(alignment: .leading) {
    //      ForEach(0..<10) { position in
    //        Text("Number \(position)")
    //          .alignmentGuide(.leading) { _ in CGFloat(position) * -10 }
    //      }
    //    }
    //    .background(.red)
    //    .frame(width: 400, height: 400)
    //    .background(.blue)
    //  }
    
    HStack(alignment: .midAccountAndName) {
      VStack {
        Text("@twostraws")
          .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
        Image("paul-hudson")
          .resizable()
          .frame(width: 64, height: 64)
      }
      
      VStack {
        Text("Full name:")
        Text("PAUL HUDSON")
          .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
          .font(.largeTitle)
      }
    }
  }
}

struct AlignmentView_Previews: PreviewProvider {
  static var previews: some View {
    AlignmentView()
  }
}
