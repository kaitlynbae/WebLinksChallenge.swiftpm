import SwiftUI

struct Stretch1View: View {
    @Binding var enteredURL: URL
    
    //MARK: Stretch #1 - Part I
    @Environment(\.openURL) var openURL
    
    
    
    var body: some View {
        
        VStack {
            Text("Stretch #1")
                .font(.largeTitle)
                .underline()
                .padding()
            
            Spacer()
            
            //MARK: Stretch #1 - Part II
            Button("Open URL Using Button") {
                openURL(URL(string: "\(enteredURL)")!)
            }
            
            
            
            
            Spacer()
            
            //MARK: Stretch #1 - Part III
            Button {
                openURL(URL(string:"\(enteredURL)")!)
            } label: {
                Image(systemName: "paperplane")
                
            }

            
            
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

