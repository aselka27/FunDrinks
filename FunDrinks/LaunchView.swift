//
//  LaunchView.swift
//  FunDrinks
//
//  Created by Asel Zhumalieva on 11/28/24.
//

import SwiftUI

private enum Parameters {
    static let title1 = "It's time for a"
    static let title2 = "Drink"
    static let title3 = "The one-stop to find amazing drink mixes for any occassion."
    static let buttonTitle = "Get Started"
    static let cocktailImage = "launch"
    static let chevron = "chevron.right"
}

struct LaunchView: View {
    var body: some View {
        ZStack(content: {
            Color(ColorConstants.Yellow.yellow1.rawValue)
                .ignoresSafeArea(.all)
            VStack(alignment: .leading, spacing: 26) {
               
                VStack(alignment: .leading, spacing: 15) {
                    Text(Parameters.title1)
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                    Text(Parameters.title2)
                        .font(.system(size: 22, weight: .semibold, design: .serif))
                        .foregroundStyle(Color(ColorConstants.Pink.pink1.rawValue))
                    Text(Parameters.title3)
                        .font(.system(size: 16, weight: .regular, design: .serif))
                        .foregroundStyle(Color(ColorConstants.Grey.grey1.rawValue))
                }
                Button {
                    //
                } label: {
                    HStack {
                        Text(Parameters.buttonTitle)
                            .foregroundStyle(.white)
                        Image(systemName: Parameters.chevron)
                            .foregroundStyle(.white)
                    }
                    
                }
                .frame(width: 180, height: 58)
                .background(Color(ColorConstants.Black.black2.rawValue))
                .cornerRadius(40)
                
                Image(Parameters.cocktailImage)
                    .resizable()
                    .frame(width: 300, height: 450, alignment: .center)
                    .aspectRatio(contentMode: .fit)

                Spacer()
            }
            .padding()
        })
    }
}

#Preview {
    LaunchView()
}
