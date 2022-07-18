//
//  QuoteView.swift
//  NiceList
//


import SwiftUI

struct QuoteView: View {
    
//    var quote : QuoteDataModel
    
    var image: String = "list.bullet.rectangle.portrait"
    var title: String
    var subTitle: String
    var showDivider:Bool? = true
    
    var body: some View {
        VStack(alignment:.leading){
            HStack(){
                Image(systemName: image)
                    .resizable()
                    .frame(width: 16, height: 16)
                    .padding(.leading)
                
                Text(title)
                    .padding(.leading, 4.0)
                    .font(Font.system(size: 15.0))
                
                Spacer()
                
                Text(subTitle)
                    .padding(.leading, 4.0)
                    .font(Font.system(size: 12))
                    .foregroundColor(Color.gray)
                
                Image(systemName: "chevron.forward")
                    .padding(.trailing)
            }
            .padding()
            .padding(.bottom, showDivider == true ? 0 : 5.0)
//            .background(Color.gray.opacity(0.3))
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.08), radius: 5, x: -5, y: -5)
            .padding(.horizontal)
            
            if showDivider == true {
                Divider()
                    .padding(.leading, 44)
            }
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
//        QuoteView(quote: UserData().latinities[0].quotes[1])
        QuoteView(title: "text", subTitle: "hello sub")
    }
}

