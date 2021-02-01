import SwiftUI
import BlackLabsSwiftUIColor

struct RandomColorView: View {
    struct ColorRecord: Identifiable {
        let id: UUID
        let color: Color
        
        init() {
            self.id = UUID()
            self.color = Color.random
        }
    }
    let swatchWidth = 32
    var numCols: Int { Int(UIScreen.main.bounds.width - 100) / 32 }
    var columns: [GridItem] {
        Array(repeating: GridItem(.fixed(CGFloat(swatchWidth))), count: numCols)
    }
    var data: [ColorRecord] {
        var d = [ColorRecord]()
        for _ in 0..<numCols*numCols/2 { d.append(ColorRecord())}
        return d
        //        return Array(0..<256).map { ColorRecord() }
    }
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Color.random")
                    .bold()
                Spacer()
            }
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(data, id: \.id) { colorRecord in
                    colorRecord.color
                        .frame(width: CGFloat(swatchWidth), height: 32)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct RandomColorView_Previews: PreviewProvider {
    static var previews: some View {
        RandomColorView()
    }
}
