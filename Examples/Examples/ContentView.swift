//
//  ContentView.swift
//  Examples
//
//  Created by Konstantin Semianov on 12/2/22.
//

import SwiftUI
import WrappingHStack

struct ContentView: View {
    struct TagModel: Identifiable {
        var id = UUID()
        var text: String
        var horizontalPadding: CGFloat
        var verticalPadding: CGFloat
    }

    let tags = (0..<5).map {
        TagModel(text: "Value \($0)",
                 horizontalPadding: CGFloat.random(in: 10...40),
                 verticalPadding: CGFloat.random(in: 10...40))
    }

    static let ticksPerSecond = CGFloat(60)
    @State private var step = 0
    var width: CGFloat {
        let period = CGFloat(10)
        let widthRange: Range<CGFloat> = 250..<650
        let averageWidth = (widthRange.lowerBound + widthRange.upperBound) / 2
        let rangeWidth = widthRange.upperBound - widthRange.lowerBound
        let phase = cos(CGFloat(step) / Self.ticksPerSecond * 2 * .pi / period)

        return averageWidth + (phase - 0.5) * rangeWidth / 2
    }

    let timer = Timer.publish(every: 1 / ticksPerSecond, on: .main, in: .common).autoconnect()

    var body: some View {
        HStack {
            WrappingHStack(alignment: .leading) {
                ForEach(tags) {
                    Text($0.text)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, $0.horizontalPadding)
                        .padding(.vertical, $0.verticalPadding)
                        .background(Color.gray)
                        .cornerRadius(16)
                }
            }
            .frame(width: width)
            .background(Rectangle().stroke(Color.accentColor))
            .onReceive(timer) { _ in step += 1 }
            .animation(.default, value: step)
            .padding()

            Spacer(minLength: .zero)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
