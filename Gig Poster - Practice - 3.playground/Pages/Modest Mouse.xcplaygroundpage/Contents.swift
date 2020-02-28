//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...
// Background

// Background
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

canvas.rotate(by: 315)
canvas.drawShapesWithBorders = false
for n in 0...17 {
    if n == 0 || n == 1 {
        canvas.lineColor = deepYellow
    } else {
        canvas.lineColor = black
    }
    
    canvas.drawLine(from: Point(x: 31.11*Double(n), y: 0.0), to: Point(x: 31.11*Double(n), y: 600.0), lineWidth: 16)
}

for m in 0...17 {
    if m == 0 || m == 1 {
        canvas.lineColor = deepYellow
    } else {
        canvas.lineColor = lightGrey
    }
    
    canvas.drawLine(from: Point(x: -31.11*Double(m), y: 0.0), to: Point(x: -31.11*Double(m), y: 600.0), lineWidth: 16)
}

// Rotate back to draw the rectangle for background
canvas.rotate(by: 45)
var newArray: [Point] = []
newArray.append(Point(x: 0, y: 400))
newArray.append(Point(x: 0, y: 600))
newArray.append(Point(x: 400, y:600))
newArray.append(Point(x: 400, y: 400))

canvas.drawCustomShape(with: newArray)


//The coordinate used for rotated canvas
//var array: [Point] = []
//array.append(Point(x: -282.84, y: 282.84))
//array.append(Point(x: -424.26, y: 424.26))
//array.append(Point(x: -142.58, y: 800))
//array.append(Point(x: 0.0, y: 565.69))
//
//canvas.drawCustomShape(with: array)

















/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

