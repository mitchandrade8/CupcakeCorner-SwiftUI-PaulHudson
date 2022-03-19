//
//  LoadingAnImageFromARemoteServer.swift
//  CupcakeCorner
//
//  Created by Mitch Andrade on 3/18/22.
//

import SwiftUI

struct LoadingAnImageFromARemoteServer: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

struct LoadingAnImageFromARemoteServer_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnImageFromARemoteServer()
    }
}
