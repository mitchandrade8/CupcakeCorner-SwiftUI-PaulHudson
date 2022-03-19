//
//  AddingCodableConformanceforPublishedProperties.swift
//  CupcakeCorner
//
//  Created by Mitch Andrade on 3/18/22.
//

import SwiftUI

class PracticeUser: ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case name
    }
    
    @Published var name = "Paul Hudson"
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

struct AddingCodableConformanceforPublishedProperties: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddingCodableConformanceforPublishedProperties_Previews: PreviewProvider {
    static var previews: some View {
        AddingCodableConformanceforPublishedProperties()
    }
}
