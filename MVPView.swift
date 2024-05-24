import SwiftUI

struct MVPView: View {
    @Binding var enteredURL: URL
    var body: some View {
        
        VStack {
            Text("MVP")
                .font(.largeTitle)
                .underline()
                .padding()
            
            Spacer()
            
            //MARK: MVP - Part I
            Link("Link Using Words", destination: enteredURL)
            
            
            
            Spacer()
            
            //MARK: MVP - Part II
            Link(destination:(enteredURL), label: {
                Image(systemName: "iphone.gen3")
                
             })
            
            
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

