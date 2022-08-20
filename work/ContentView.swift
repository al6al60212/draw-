import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        /*let imageView = UIImageView(image: UIImage(named: "毛毛"))
        imageView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        imageView.alpha = 0.4
        view.addSubview(imageView)
         */
        //頭部輪廓
        var path = UIBezierPath()
        path.move(to: CGPoint(x: 238, y: 78))
        path.addQuadCurve(to: CGPoint(x: 184, y: 254), controlPoint: CGPoint(x: 298, y: 185))
        path.addQuadCurve(to: CGPoint(x: 38, y: 191), controlPoint: CGPoint(x: 73, y: 301))
        path.addCurve(to: CGPoint(x: 239, y: 79), controlPoint1: CGPoint(x: 6, y: 98), controlPoint2: CGPoint(x: 148, y: -9))
        
        let headlayer = CAShapeLayer()
        headlayer.path = path.cgPath
        headlayer.fillColor = UIColor.clear.cgColor
        headlayer.fillColor = UIColor(red: 248/255, green: 212/255, blue: 188/255, alpha: 1).cgColor
        headlayer.strokeColor = UIColor.black.cgColor
        headlayer.lineWidth = 9
        view.layer.addSublayer(headlayer)
        //瀏海
        path = UIBezierPath()
        path.move(to: CGPoint(x: 238, y: 79))
        path.addQuadCurve(to: CGPoint(x: 118, y: 122), controlPoint: CGPoint(x: 166, y: 91))
        path.addLine(to: CGPoint(x: 84, y: 107))
        path.addQuadCurve(to: CGPoint(x: 77, y: 156), controlPoint: CGPoint(x: 73, y: 148))
        path.addLine(to: CGPoint(x: 38, y: 185))
        path.addCurve(to: CGPoint(x: 239, y: 79), controlPoint1: CGPoint(x: 6, y: 98), controlPoint2: CGPoint(x: 148, y: -9))
        
        let hairlayer = CAShapeLayer()
        hairlayer.path = path.cgPath
        hairlayer.fillColor = UIColor.clear.cgColor
        hairlayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        hairlayer.strokeColor = UIColor.black.cgColor
        hairlayer.lineWidth = 9
        view.layer.addSublayer(hairlayer)
        //左側翹髮
        path = UIBezierPath()
        path.move(to: CGPoint(x: 35, y: 194))
        path.addQuadCurve(to: CGPoint(x: 9, y: 211), controlPoint: CGPoint(x: 19, y: 214))
        path.addQuadCurve(to: CGPoint(x: 83, y: 261), controlPoint: CGPoint(x: 48, y: 262))
        path.close()
        
        let leftHairlayer = CAShapeLayer()
        leftHairlayer.path = path.cgPath
        leftHairlayer.fillColor = UIColor.clear.cgColor
        leftHairlayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        leftHairlayer.strokeColor = UIColor.black.cgColor
        leftHairlayer.lineWidth = 3
        view.layer.addSublayer(leftHairlayer)
        //右測翹髮
        path = UIBezierPath()
        path.move(to: CGPoint(x: 238, y: 79))
        path.addQuadCurve(to: CGPoint(x: 268, y: 65), controlPoint: CGPoint(x: 257, y: 81))
        path.addQuadCurve(to: CGPoint(x: 263, y: 153), controlPoint: CGPoint(x: 285, y: 109))
        path.close()
        
        let rightHairlayer = CAShapeLayer()
        rightHairlayer.path = path.cgPath
        rightHairlayer.fillColor = UIColor.clear.cgColor
        rightHairlayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        rightHairlayer.strokeColor = UIColor.black.cgColor
        rightHairlayer.lineWidth = 3
        view.layer.addSublayer(rightHairlayer)
        //左眼輪廓
        path = UIBezierPath()
        path.move(to: CGPoint(x: 61, y: 171))
        path.addLine(to: CGPoint(x: 104, y: 178))
        path.addQuadCurve(to: CGPoint(x: 105, y: 166), controlPoint: CGPoint(x: 109, y: 177))
        path.addQuadCurve(to: CGPoint(x: 109, y: 184), controlPoint: CGPoint(x: 113, y: 183))
        path.addLine(to: CGPoint(x: 105, y: 184))
        path.addQuadCurve(to: CGPoint(x: 103, y: 264), controlPoint: CGPoint(x: 140, y: 223))
        path.addLine(to: CGPoint(x: 68, y: 252))
        path.addLine(to: CGPoint(x: 54, y: 226))
        path.addQuadCurve(to: CGPoint(x: 65, y: 179), controlPoint: CGPoint(x: 49, y: 192))
        path.addLine(to: CGPoint(x: 53, y: 178))
        path.close()
        
        let leftEyeLayer = CAShapeLayer()
        leftEyeLayer.path = path.cgPath
        leftEyeLayer.fillColor = UIColor.clear.cgColor
        leftEyeLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        leftEyeLayer.strokeColor = UIColor.black.cgColor
        leftEyeLayer.lineWidth = 1
        view.layer.addSublayer(leftEyeLayer)
        //左眼(白)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 77, y: 221))
        path.addCurve(to: CGPoint(x: 101, y: 205), controlPoint1: CGPoint(x: 67, y: 198), controlPoint2: CGPoint(x: 92, y: 189))
        path.addCurve(to: CGPoint(x: 77, y: 221), controlPoint1: CGPoint(x: 114, y: 237), controlPoint2: CGPoint(x: 82, y: 239))
        
        let leftWhiteLayer = CAShapeLayer()
        leftWhiteLayer.path = path.cgPath
        leftWhiteLayer.fillColor = UIColor.clear.cgColor
        leftWhiteLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        leftWhiteLayer.strokeColor = UIColor.black.cgColor
        leftWhiteLayer.lineWidth = 1
        view.layer.addSublayer(leftWhiteLayer)
        //左眼(綠)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 41, y: 189))
        path.addLine(to: CGPoint(x: 54, y: 179))
        path.addLine(to: CGPoint(x: 64, y: 180))
        path.addQuadCurve(to: CGPoint(x: 53, y: 217), controlPoint: CGPoint(x: 51, y: 192))
        path.addQuadCurve(to: CGPoint(x: 41, y: 189), controlPoint: CGPoint(x: 47, y: 210))
        
        let leftGreenLayer = CAShapeLayer()
        leftGreenLayer.path = path.cgPath
        leftGreenLayer.fillColor = UIColor.clear.cgColor
        leftGreenLayer.fillColor = UIColor(red: 113/255, green: 186/255, blue: 95/255, alpha: 1).cgColor
        leftGreenLayer.strokeColor = UIColor.black.cgColor
        leftGreenLayer.lineWidth = 1
        view.layer.addSublayer(leftGreenLayer)
        //右眼(白底)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 157, y: 107))
        path.addQuadCurve(to: CGPoint(x: 234, y: 82), controlPoint: CGPoint(x: 195, y: 89))
        path.addQuadCurve(to: CGPoint(x: 248, y: 184), controlPoint: CGPoint(x: 263, y: 122))
        path.addQuadCurve(to: CGPoint(x: 134, y: 163), controlPoint: CGPoint(x: 179, y: 233))
        path.close()
        
        let rightWhiteLayer = CAShapeLayer()
        rightWhiteLayer.path = path.cgPath
        rightWhiteLayer.fillColor = UIColor.clear.cgColor
        rightWhiteLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        rightWhiteLayer.lineWidth = 1
        view.layer.addSublayer(rightWhiteLayer)
        //右眼(綠)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 154, y: 113))
        path.addLine(to: CGPoint(x: 164, y: 104))
        path.addQuadCurve(to: CGPoint(x: 196, y: 93), controlPoint: CGPoint(x: 175, y: 97))
        path.addQuadCurve(to: CGPoint(x: 252, y: 123), controlPoint: CGPoint(x: 232, y: 86))
        path.addQuadCurve(to: CGPoint(x: 247, y: 186), controlPoint: CGPoint(x: 257, y: 153))
        path.addQuadCurve(to: CGPoint(x: 140, y: 150), controlPoint: CGPoint(x: 155, y: 236))
        path.close()
        
        let rightGreenLayer = CAShapeLayer()
        rightGreenLayer.path = path.cgPath
        rightGreenLayer.fillColor = UIColor.clear.cgColor
        rightGreenLayer.fillColor = UIColor(red: 115/255, green: 183/255, blue: 100/255, alpha: 1).cgColor
        rightGreenLayer.lineWidth = 1
        view.layer.addSublayer(rightGreenLayer)
        //右眼(黑輪廓)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 157, y: 107))
        path.addLine(to: CGPoint(x: 148, y: 110))
        path.addLine(to: CGPoint(x: 130, y: 162))
        path.addQuadCurve(to: CGPoint(x: 118, y: 157), controlPoint: CGPoint(x: 125, y: 166))
        path.addQuadCurve(to: CGPoint(x: 133, y: 166), controlPoint: CGPoint(x: 127, y: 174))
        path.addQuadCurve(to: CGPoint(x: 245, y: 190), controlPoint: CGPoint(x: 176, y: 231))
        path.addLine(to: CGPoint(x: 253, y: 180))
        path.addQuadCurve(to: CGPoint(x: 135, y: 163), controlPoint: CGPoint(x: 180, y: 232))
        path.close()
        let rightBlackLayer = CAShapeLayer()
        rightBlackLayer.path = path.cgPath
        rightBlackLayer.fillColor = UIColor.clear.cgColor
        rightBlackLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        rightBlackLayer.strokeColor = UIColor.black.cgColor
        rightBlackLayer.lineWidth = 1
        view.layer.addSublayer(rightBlackLayer)
        //右眼(黑圓)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 210, y: 107))
        path.addCurve(to: CGPoint(x: 203, y: 196), controlPoint1: CGPoint(x: 129, y: 102), controlPoint2: CGPoint(x: 149, y: 201))
        path.addCurve(to: CGPoint(x: 210, y: 107), controlPoint1: CGPoint(x: 263, y: 196), controlPoint2: CGPoint(x: 258, y: 108))
        
        let circleBlackLayer = CAShapeLayer()
        circleBlackLayer.path = path.cgPath
        circleBlackLayer.fillColor = UIColor.clear.cgColor
        circleBlackLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        circleBlackLayer.strokeColor = UIColor.black.cgColor
        circleBlackLayer.lineWidth = 1
        view.layer.addSublayer(circleBlackLayer)
        //右眼(白圓)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 205, y: 133))
        path.addCurve(to: CGPoint(x: 206, y: 165), controlPoint1: CGPoint(x: 183, y: 131), controlPoint2: CGPoint(x: 185, y: 168))
        path.addCurve(to: CGPoint(x: 205, y: 133), controlPoint1: CGPoint(x: 228, y: 165), controlPoint2: CGPoint(x: 228, y: 130))
        
        let circleWhiteLayer = CAShapeLayer()
        circleWhiteLayer.path = path.cgPath
        circleWhiteLayer.fillColor = UIColor.clear.cgColor
        circleWhiteLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        circleWhiteLayer.strokeColor = UIColor.black.cgColor
        circleWhiteLayer.lineWidth = 1
        view.layer.addSublayer(circleWhiteLayer)
        //嘴
        path = UIBezierPath()
        path.move(to: CGPoint(x: 132, y: 223))
        path.addCurve(to: CGPoint(x: 153, y: 205), controlPoint1: CGPoint(x: 154, y: 243), controlPoint2: CGPoint(x: 167, y: 226))
        path.addCurve(to: CGPoint(x: 132, y: 223), controlPoint1: CGPoint(x: 180, y: 237), controlPoint2: CGPoint(x: 145, y: 244))
        
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = path.cgPath
        mouthLayer.fillColor = UIColor.clear.cgColor
        mouthLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        mouthLayer.strokeColor = UIColor.black.cgColor
        mouthLayer.lineWidth = 1
        view.layer.addSublayer(mouthLayer)
        //左側手
        path = UIBezierPath()
        path.move(to: CGPoint(x: 114, y: 269))
        path.addQuadCurve(to: CGPoint(x: 121, y: 324), controlPoint: CGPoint(x: 98, y: 294))
        path.addQuadCurve(to: CGPoint(x: 153, y: 311), controlPoint: CGPoint(x: 143, y: 334))
        path.addQuadCurve(to: CGPoint(x: 158, y: 265), controlPoint: CGPoint(x: 150, y: 284))
        path.addQuadCurve(to: CGPoint(x: 114, y: 269), controlPoint: CGPoint(x: 134, y: 272))
        
        let leftHandLayer = CAShapeLayer()
        leftHandLayer.path = path.cgPath
        leftHandLayer.fillColor = UIColor.clear.cgColor
        leftHandLayer.fillColor = UIColor(red: 248/255, green: 212/255, blue: 190/255, alpha: 1).cgColor
        leftHandLayer.strokeColor = UIColor.black.cgColor
        leftHandLayer.lineWidth = 7
        view.layer.addSublayer(leftHandLayer)
        //右側手
        path = UIBezierPath()
        path.move(to: CGPoint(x: 270, y: 119))
        path.addQuadCurve(to: CGPoint(x: 333, y: 119), controlPoint: CGPoint(x: 301, y: 87))
        path.addQuadCurve(to: CGPoint(x: 316, y: 150), controlPoint: CGPoint(x: 342, y: 142))
        path.addQuadCurve(to: CGPoint(x: 262, y: 155), controlPoint: CGPoint(x: 290, y: 141))
        path.close()
        
        let rightHandLayer = CAShapeLayer()
        rightHandLayer.path = path.cgPath
        rightHandLayer.fillColor = UIColor.clear.cgColor
        rightHandLayer.fillColor = UIColor(red: 248/255, green: 212/255, blue: 190/255, alpha: 1).cgColor
        rightHandLayer.strokeColor = UIColor.black.cgColor
        rightHandLayer.lineWidth = 7
        view.layer.addSublayer(rightHandLayer)
        //身體輪廓
        path = UIBezierPath()
        path.move(to: CGPoint(x: 253, y: 190))
        path.addQuadCurve(to: CGPoint(x: 373, y: 306), controlPoint: CGPoint(x: 353, y: 230))
        path.addQuadCurve(to: CGPoint(x: 312, y: 291), controlPoint: CGPoint(x: 357, y: 352))
        path.addCurve(to: CGPoint(x: 244, y: 269), controlPoint1: CGPoint(x: 288, y: 334), controlPoint2: CGPoint(x: 237, y: 292))
        path.addLine(to: CGPoint(x: 214, y: 238))
        path.close()
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = path.cgPath
        bodyLayer.fillColor = UIColor.clear.cgColor
        bodyLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        bodyLayer.strokeColor = UIColor.black.cgColor
        bodyLayer.lineWidth = 1
        view.layer.addSublayer(bodyLayer)
        //衣服(上綠)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 250, y: 197))
        path.addLine(to: CGPoint(x: 273, y: 208))
        path.addQuadCurve(to: CGPoint(x: 232, y: 244), controlPoint: CGPoint(x: 263, y: 235))
        path.addLine(to: CGPoint(x: 221, y: 233))
        path.addQuadCurve(to: CGPoint(x: 250, y: 197), controlPoint: CGPoint(x: 240, y: 217))
        
        let greenUpLayer = CAShapeLayer()
        greenUpLayer.path = path.cgPath
        greenUpLayer.fillColor = UIColor.clear.cgColor
        greenUpLayer.fillColor = UIColor(red: 108/255, green: 186/255, blue: 98/255, alpha: 1).cgColor
        greenUpLayer.strokeColor = UIColor.black.cgColor
        greenUpLayer.lineWidth = 1
        view.layer.addSublayer(greenUpLayer)
        //衣服(下綠)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 298, y: 223))
        path.addLine(to: CGPoint(x: 318, y: 237))
        path.addQuadCurve(to: CGPoint(x: 302, y: 257), controlPoint: CGPoint(x: 311, y: 250))
        path.addQuadCurve(to: CGPoint(x: 281, y: 245), controlPoint: CGPoint(x: 293, y: 247))
        path.addQuadCurve(to: CGPoint(x: 298, y: 223), controlPoint: CGPoint(x: 292, y: 235))
        
        let greenDownLayer = CAShapeLayer()
        greenDownLayer.path = path.cgPath
        greenDownLayer.fillColor = UIColor.clear.cgColor
        greenDownLayer.fillColor = UIColor(red: 108/255, green: 186/255, blue: 98/255, alpha: 1).cgColor
        greenDownLayer.strokeColor = UIColor.black.cgColor
        greenDownLayer.lineWidth = 1
        view.layer.addSublayer(greenDownLayer)
        //左側腿(白)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 280, y: 254))
        path.addQuadCurve(to: CGPoint(x: 258, y: 287), controlPoint: CGPoint(x: 281, y: 287))
        path.addQuadCurve(to: CGPoint(x: 280, y: 254), controlPoint: CGPoint(x: 241, y: 250))
        
        let whiteLULayer = CAShapeLayer()
        whiteLULayer.path = path.cgPath
        whiteLULayer.fillColor = UIColor.clear.cgColor
        whiteLULayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        whiteLULayer.strokeColor = UIColor.black.cgColor
        whiteLULayer.lineWidth = 1
        view.layer.addSublayer(whiteLULayer)
        //左側腳(白)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 286, y: 275))
        path.addCurve(to: CGPoint(x: 268, y: 293), controlPoint1: CGPoint(x: 313, y: 304), controlPoint2: CGPoint(x: 277, y: 305))
        path.addQuadCurve(to: CGPoint(x: 286, y: 275), controlPoint: CGPoint(x: 282, y: 287))
        
        let whiteLDLayer = CAShapeLayer()
        whiteLDLayer.path = path.cgPath
        whiteLDLayer.fillColor = UIColor.clear.cgColor
        whiteLDLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        whiteLDLayer.strokeColor = UIColor.black.cgColor
        whiteLDLayer.lineWidth = 1
        view.layer.addSublayer(whiteLDLayer)
        //右側腿(白)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 323, y: 242))
        path.addQuadCurve(to: CGPoint(x: 355, y: 279), controlPoint: CGPoint(x: 340, y: 257))
        path.addQuadCurve(to: CGPoint(x: 329, y: 298), controlPoint: CGPoint(x: 346, y: 292))
        path.addLine(to: CGPoint(x: 312, y: 274))
        path.addQuadCurve(to: CGPoint(x: 306, y: 262), controlPoint: CGPoint(x: 309, y: 264))
        path.addQuadCurve(to: CGPoint(x: 323, y: 242), controlPoint: CGPoint(x: 313, y: 257))
        
        let whiteRULayer = CAShapeLayer()
        whiteRULayer.path = path.cgPath
        whiteRULayer.fillColor = UIColor.clear.cgColor
        whiteRULayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        whiteRULayer.strokeColor = UIColor.black.cgColor
        whiteRULayer.lineWidth = 1
        view.layer.addSublayer(whiteRULayer)
        //右側腳(白)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 356, y: 289))
        path.addCurve(to: CGPoint(x: 334, y: 302), controlPoint1: CGPoint(x: 368, y: 318), controlPoint2: CGPoint(x: 350, y: 325))
        path.addQuadCurve(to: CGPoint(x: 356, y: 289), controlPoint: CGPoint(x: 347, y: 299))
        
        let whiteRDLayer = CAShapeLayer()
        whiteRDLayer.path = path.cgPath
        whiteRDLayer.fillColor = UIColor.clear.cgColor
        whiteRDLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        whiteRDLayer.strokeColor = UIColor.black.cgColor
        whiteRDLayer.lineWidth = 1
        view.layer.addSublayer(whiteRDLayer)
        
        return view
    }
  
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
