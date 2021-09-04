//
//  DetailsView.swift
//  NavigationiOS
//
//  Created by Bryan A Bolivar M on 3/09/21.
//

import SwiftUI

enum DetailsViewAction {
    case didPressGoBack
    case didPressViewComments
    case didPressShare
}

protocol DetailsViewDelegate {
    func didPerformAction(_ type: DetailsViewAction)
}

struct DetailsView: View {
    
    var controller: DetailsViewController
    
    var delegate: DetailsViewDelegate {
        return controller
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Circle()
                    .frame(width: 40, height: 40)
                    .clipped()
                Text("Hello, World!")
                Spacer()
                Image(systemName: "paperplane")
            }
            .frame(height: 40)
            .clipped()
            .padding(.horizontal, 20)
            Rectangle()
                .frame(height: 350)
                .clipped()
            HStack {
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                })
                
                Button(action: {
                    delegate.didPerformAction(.didPressViewComments)
                }, label: {
                    Image(systemName: "message")
                })
                
                Button(action: {
                    delegate.didPerformAction(.didPressShare)
                }, label: {
                    Image(systemName: "paperplane")
                })

                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bookmark")
                })
            }
            .frame(height: 40)
            .clipped()
            .padding(.horizontal, 20)
            Text("@bolivarbryan")
                .font(.system(size: 12, weight: .semibold, design: .default))
                .padding(.horizontal, 22)
            Text("This is your space. Draft messages, list your to-dos, or keep links and files handy. You can also talk to yourself here, but please bear in mind you’ll have to supply both sides of the conversation.")
                .font(.system(size: 12, weight: .regular, design: .default))
                .padding(.horizontal, 22)
                .padding(.top, 5)
            Spacer()
        }
    }
}
