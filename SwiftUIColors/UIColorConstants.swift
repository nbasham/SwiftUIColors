import SwiftUI
import BlackLabsSwiftUIColor

struct UIColorConstants: View {
    let colorWidth: CGFloat = 34
    let colorHeight: CGFloat = 28
    let colorList: [ColorRecord] = [
        ColorRecord("systemBlue", Color.systemBlue),
        ColorRecord("systemGreen", Color.systemGreen),
        ColorRecord("systemIndigo", Color.systemIndigo),
        ColorRecord("systemOrange", Color.systemOrange),
        ColorRecord("systemPink", Color.systemPink),
        ColorRecord("systemPurple", Color.systemPurple),
        ColorRecord("systemRed", Color.systemRed),
        ColorRecord("systemTeal", Color.systemTeal),
        ColorRecord("systemYellow", Color.systemYellow),
        ColorRecord("systemGray", Color.systemGray),
        ColorRecord("systemGray2", Color.systemGray2),
        ColorRecord("systemGray3", Color.systemGray3),
        ColorRecord("systemGray4", Color.systemGray4),
        ColorRecord("systemGray5", Color.systemGray5),
        ColorRecord("systemGray6", Color.systemGray6),
        ColorRecord("systemFill", Color.systemFill),
        ColorRecord("secondarySystemFill", Color.secondarySystemFill),
        ColorRecord("tertiarySystemFill", Color.tertiarySystemFill),
        ColorRecord("quaternarySystemFill", Color.quaternarySystemFill),
        ColorRecord("systemBackground", Color.systemBackground),
        ColorRecord("secondarySystemBackground", Color.secondarySystemBackground),
        ColorRecord("tertiarySystemBackground", Color.tertiarySystemBackground),
        ColorRecord("systemGroupedBackground", Color.systemGroupedBackground),
        ColorRecord("secondarySystemGroupedBackground", Color.secondarySystemGroupedBackground),
        ColorRecord("tertiarySystemGroupedBackground", Color.tertiarySystemGroupedBackground)
    ]
    
    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                Text("Light Dark")
                    .padding(.trailing)
            }
            VStack(spacing: 2) {
                ForEach(colorList) { colorRec in
                    colorLine(colorRec)
                }
                .padding(.horizontal)
            }
        }
    }

    func colorLine(_ c: ColorRecord) -> some View {
        HStack(spacing: 2) {
            Text("Color.\(c.name)")
                .font(.subheadline)
            Spacer()
            colorSwatch(c.color)
                .padding(.trailing, 8)
            colorSwatch(c.color)
                .environment(\.colorScheme, .dark)
        }
        .padding(0)
    }
    func colorSwatch(_ color: Color) -> some View {
        color
            .frame(width: colorWidth, height: colorHeight)
            .border(Color.black, width: 1)
    }
}

struct UIColorConstants_Previews: PreviewProvider {
    static var previews: some View {
        UIColorConstants()
    }
}

struct ColorRecord: Identifiable {
    let id: String
    let color: Color
    let name: String
    
    init(_ name: String, _ color: Color) {
        id = name
        self.name = name
        self.color = color
    }
}
public extension Color {
    static let systemBlue: Color = Color(UIColor.systemBlue)
    static let systemGreen: Color = Color(UIColor.systemGreen)
    static let systemIndigo: Color = Color(UIColor.systemIndigo)
    static let systemOrange: Color = Color(UIColor.systemOrange)
    static let systemPink: Color = Color(UIColor.systemPink)
    static let systemPurple: Color = Color(UIColor.systemPurple)
    static let systemRed: Color = Color(UIColor.systemRed)
    static let systemTeal: Color = Color(UIColor.systemTeal)
    static let systemYellow: Color = Color(UIColor.systemYellow)
    static let systemGray: Color = Color(UIColor.systemGray)
    static let systemGray2: Color = Color(UIColor.systemGray2)
    static let systemGray3: Color = Color(UIColor.systemGray3)
    static let systemGray4: Color = Color(UIColor.systemGray4)
    static let systemGray5: Color = Color(UIColor.systemGray5)
    static let systemGray6: Color = Color(UIColor.systemGray6)
    static let systemFill: Color = Color(UIColor.systemFill)
    static let secondarySystemFill: Color = Color(UIColor.secondarySystemFill)
    static let tertiarySystemFill: Color = Color(UIColor.tertiarySystemFill)
    static let quaternarySystemFill: Color = Color(UIColor.quaternarySystemFill)
    static let systemBackground: Color = Color(UIColor.systemBackground)
    static let secondarySystemBackground: Color = Color(UIColor.secondarySystemBackground)
    static let tertiarySystemBackground: Color = Color(UIColor.tertiarySystemBackground)
    static let systemGroupedBackground: Color = Color(UIColor.systemGroupedBackground)
    static let secondarySystemGroupedBackground: Color = Color(UIColor.secondarySystemGroupedBackground)
    static let tertiarySystemGroupedBackground: Color = Color(UIColor.tertiarySystemGroupedBackground)
}
