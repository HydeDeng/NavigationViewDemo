//
//  HeaderView.swift
//  NiceList
//


import SwiftUI

struct HeaderView : View {
    
    var section : SectionDataModel
    
    var body: some View {
        HStack() {
            Triangle()
                .fill(Color.clear)
                .overlay(
                    Triangle()
                        .stroke(Color.black, lineWidth: 1)
            )
                .frame(width : 20, height : 20)
                .padding()
                .rotationEffect(.degrees(section.expanded ? 90 : 0), anchor: .init(x: 0.5, y: 0.5)).animation(.default)
            Spacer()
            Text(String(section.letter))
                .font(.title)
                .foregroundColor(Color.black)
            Spacer()
        }
//        .padding()
//        .padding(.bottom, showDivider == true ? 0 : 5.0)
//            .background(Color.gray.opacity(0.3))
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: -5, y: -5)
        .padding(.horizontal)
    }
    
    struct Triangle : Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 1))
            path.addLine(to: CGPoint(x: sqrt(3)*(rect.height)/2, y: rect.height/2))
            path.closeSubpath()
            return path
        }
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(section:  UserData().latinities[0])
    }
}
