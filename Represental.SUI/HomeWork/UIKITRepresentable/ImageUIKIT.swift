import SwiftUI

// This struct conforms to UIViewRepresentable protocol
// It allows us to use UIKit views (like UIImageView) inside SwiftUI
struct ImageUIKIT: UIViewRepresentable {
    // This is the UIImage we want to display
    let image: UIImage

    // This function creates and configures the UIKit view
    // It's called when the SwiftUI view is first created
    func makeUIView(context: Context) -> UIImageView {
        // Create a new UIImageView
        let imageView = UIImageView()
        
        // Set the image we want to display
        imageView.image = image
        
        // Make the image fill the view while maintaining aspect ratio
        imageView.contentMode = .scaleAspectFill
        
        // Clip any parts of the image that extend beyond the view bounds
        imageView.clipsToBounds = true
        
        // Return the configured UIImageView
        return imageView
    }

    // This function updates the UIKit view when SwiftUI state changes
    // It's called whenever the SwiftUI view needs to refresh
    func updateUIView(_ uiView: UIImageView, context: Context) {
        // Update the image in case it changed
        uiView.image = image
        
        // Make the image view circular
        // Get the smaller of width/height and divide by 2 for radius
        let radius = min(uiView.bounds.width, uiView.bounds.height) / 2
        
        // Apply the corner radius to make it circular
        uiView.layer.cornerRadius = radius
    }
}