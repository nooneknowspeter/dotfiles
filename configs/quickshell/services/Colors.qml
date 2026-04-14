pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: colors

    // Base16 color scheme from stylix (black-metal-dark-funeral defaults)
    property string base00: "#000000"  // Background
    property string base01: "#121212"  // Lighter background
    property string base02: "#222222"  // Selection background
    property string base03: "#333333"  // Comments
    property string base04: "#999999"  // Dark foreground
    property string base05: "#c1c1c1"  // Default foreground
    property string base06: "#999999"  // Light foreground
    property string base07: "#c1c1c1"  // Light background
    property string base08: "#5f8787"  // Variables
    property string base09: "#aaaaaa"  // Integers
    property string base0A: "#5f81a5"  // Classes
    property string base0B: "#d0dfee"  // Strings
    property string base0C: "#aaaaaa"  // Support
    property string base0D: "#888888"  // Functions
    property string base0E: "#999999"  // Keywords
    property string base0F: "#444444"  // Deprecated

    // Semantic aliases
    property string background: base00
    property string backgroundAlt: base01
    property string selection: base02
    property string comment: base03
    property string foregroundDim: base04
    property string foreground: base05
    property string accent: base0A
    property string highlight: base0B
    property string warning: "#ffb86c"
    property string error: "#ff5555"

    // Opacity from stylix
    property real desktopOpacity: 0.8

    property string palettePath: {
        let home = Qt.getenv ? Qt.getenv("HOME") : "/home/" + Qt.getenv("USER")
        if (!home || home === "") {
            // Fallback: try to extract from resolved URL
            let url = Qt.resolvedUrl(".")
            let match = url.toString().match(/\/home\/([^/]+)/)
            if (match) home = "/home/" + match[1]
        }
        return home + "/.config/stylix/palette.json"
    }

    // Load colors from stylix palette
    FileView {
        id: paletteFile
        path: "/home/nooneknows/.config/stylix/palette.json"
        onTextChanged: {
            if (text && text.trim().length > 0) {
                try {
                    let palette = JSON.parse(text)
                    if (palette.base00) colors.base00 = "#" + palette.base00
                    if (palette.base01) colors.base01 = "#" + palette.base01
                    if (palette.base02) colors.base02 = "#" + palette.base02
                    if (palette.base03) colors.base03 = "#" + palette.base03
                    if (palette.base04) colors.base04 = "#" + palette.base04
                    if (palette.base05) colors.base05 = "#" + palette.base05
                    if (palette.base06) colors.base06 = "#" + palette.base06
                    if (palette.base07) colors.base07 = "#" + palette.base07
                    if (palette.base08) colors.base08 = "#" + palette.base08
                    if (palette.base09) colors.base09 = "#" + palette.base09
                    if (palette.base0A) colors.base0A = "#" + palette.base0A
                    if (palette.base0B) colors.base0B = "#" + palette.base0B
                    if (palette.base0C) colors.base0C = "#" + palette.base0C
                    if (palette.base0D) colors.base0D = "#" + palette.base0D
                    if (palette.base0E) colors.base0E = "#" + palette.base0E
                    if (palette.base0F) colors.base0F = "#" + palette.base0F
                    console.log("Loaded stylix colors")
                } catch (e) {
                    console.log("Using default colors (stylix palette not available)")
                }
            }
        }
    }
}
