import SwiftUI
import BlackLabsSwiftUIColor

struct HexColor: View {
    let colorWidth: CGFloat = 34
    let colorHeight: CGFloat = 28
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 2) {
                HStack {
                    Text("Hex 3, 6, or 8 chars, with or without #")
                        .bold()
                    Spacer()
                }
                ForEach(hexList) { hexRec in
                    colorLine(hexRec.hex)
                }
            }
            .padding()
            
            VStack(spacing: 2) {
                HStack {
                    Text("Hex with alpha")
                        .bold()
                    Spacer()
                }
                ForEach(hexWithAlphaList) { hexRec in
                    colorLine(hexRec.hex)
                }
            }
            .padding()
            
            VStack(spacing: 2) {
                HStack {
                    Text("Using web color constants")
                        .bold()
                    Spacer()
                }
                ForEach(hexWebColorsList) { hexRec in
                    colorLine(hexRec.hex)
                }
            }
            .padding()
            
            VStack(spacing: 2) {
                HStack {
                    Text("Clear")
                        .bold()
                    Spacer()
                }
                ForEach(hexClearList) { hexRec in
                    colorLine(hexRec.hex)
                }
            }
            .padding()
        }
    }
    
    func colorLine(_ hex: String?) -> some View {
        var s = "Color(hex: nil)"
        if hex != nil { s = "Color(hex: \"\(hex!)\")" }
        return HStack(spacing: 2) {
            Text(s)
                .font(.subheadline)
            Spacer()
            colorSwatch(hex)
                .padding(.trailing, 8)
        }
        .padding(0)
    }
    func colorSwatch(_ hex: String?) -> some View {
        Color(hex: hex)
            .frame(width: colorWidth, height: colorHeight)
            .border(Color.black, width: 1)
    }
}

struct HexColor_Previews: PreviewProvider {

    static var previews: some View {
        HexColor()
    }
}

struct HexColorRecord: Identifiable {
    let id: UUID
    let hex: String?
    
    init(_ hex: String?) {
        id = UUID()
        self.hex = hex
    }
}

let hexList: [HexColorRecord] = [
    HexColorRecord("afe"),
    HexColorRecord("FFFF00"),
    HexColorRecord("#abc"),
    HexColorRecord("#00FF00"),
]

let hexWithAlphaList: [HexColorRecord] = [
    HexColorRecord("abc7"),
    HexColorRecord("#DEF7"),
    HexColorRecord("0000FF77"),
    HexColorRecord("#0000FF77"),
]

let hexWebColorsList: [HexColorRecord] = [
    HexColorRecord("LIGHTGREEN"),
    HexColorRecord("hotpink"),
    HexColorRecord("SEAGREEN"),
    HexColorRecord("Coral"),
    HexColorRecord("LAVENDER")
]


let hexClearList: [HexColorRecord] = [
    HexColorRecord(nil),
    HexColorRecord("clear"),
    HexColorRecord("Transparent"),
    HexColorRecord("")
]
