class DatePickerViewController < UIViewController
  
  def init
    if super 
      self.title = "Date Picker"
      # self.tabBarItem.image = UIImage.imageNamed('FirstTab.png')
    end
    self
  end 

  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @myDatePicker = UIDatePicker.alloc.init
    @myDatePicker.center = view.center
    @myDatePicker.addTarget(self, action:'datePickerChanged', forControlEvents:UIControlEventValueChanged)
    
    # @myDatePicker.datePickerMode = UIDatePickerModeTime
    # @myDatePicker.datePickerMode = UIDatePickerModeDate
    @myDatePicker.datePickerMode = UIDatePickerModeDateAndTime
    # @myDatePicker.datePickerMode = UIDatePickerModeCountDownTimer

    view.addSubview(@myDatePicker)

    @label = UILabel.new
    @label.text = 'Picker Results'
    @label.frame = [[0,0],[250,150]]

    view.addSubview(@label)
  end

  def datePickerChanged
    @label.text = "Event: #{@myDatePicker.date}"
  end

end
