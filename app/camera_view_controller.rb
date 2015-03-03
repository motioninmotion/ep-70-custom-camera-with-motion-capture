class CameraViewController < UIViewController
  def viewWillAppear(animated)
    super

    @capture = Motion::Capture.new
    @capture.attach(view)
    @capture.start!(AVCaptureSessionPresetHigh)

    @tap_gesture = UITapGestureRecognizer.alloc.initWithTarget(self, action: 'capture:')
    @tap_gesture.numberOfTapsRequired = 1
    view.addGestureRecognizer(@tap_gesture)
  end

  def viewWillDisappear(animated)
    @capture.stop!
    view.removeGestureRecognizer(@tap_gesture)
  end

  def capture(sender)
    @capture.capture_image do |image|
      @image_view.removeFromSuperview if @image_view

      @image_view = UIImageView.new
      @image_view.image = image
      @image_view.frame = [[0, 64], [CGRectGetWidth(view.bounds) / 5, CGRectGetHeight(view.bounds) / 5]]
      view.addSubview(@image_view)
    end
  end
end
