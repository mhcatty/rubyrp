module ApplicationHelper

  def resource_name
     :user
   end

  def resource_class
    User
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # Returns a custom list of timezone options
  def timezone_options
    return [
      ['Eastern Time (US & Canada)', 'Eastern Time (US & Canada)'],
      ['Central Time (US & Canada)', 'Central Time (US & Canada)'],
      ['Mountain Time (US & Canada)', 'Mountain Time (US & Canada)'],
      ['Pacific Time (US & Canada)', 'Pacific Time (US & Canada)'],
      ['Alaska', 'Alaska'],
      ['Hawaii', 'Hawaii'],
      ['Abu Dhabi', 'Abu Dhabi'],
      ['Atlantic Time (Canada)', 'Atlantic Time (Canada)'],
      ['Amsterdam', 'Amsterdam'],
      ['Athens', 'Athens'],
      ['Auckland', 'Auckland'],
      ['Baghdad', 'Baghdad'],
      ['Bangkok', 'Bangkok'],
      ['Beijing', 'Beijing'],
      ['Berlin', 'Berlin'],
      ['Bogota', 'Bogota'],
      ['Brasilia', 'Brasilia'],
      ['Brussels', 'Brussels'],
      ['Buenos Aires', 'Buenos Aires'],
      ['Cairo', 'Cairo'],
      ['Caracas', 'Caracas'],
      ['Central America', 'Central America'],
      ['Copenhagen', 'Copenhagen'],
      ['Dublin', 'Dublin'],
      ['Fiji', 'Fiji'],
      ['Greenland', 'Greenland'],
      ['Hanoi', 'Hanoi'],
      ['Helsinki', 'Helsinki'],
      ['Hong Kong', 'Hong Kong'],
      ['Islamabad', 'Islamabad'],
      ['Istanbul', 'Istanbul'],
      ['Jakarta', 'Jakarta'],
      ['Jerusalem', 'Jerusalem'],
      ['Kabul', 'Kabul'],
      ['Karachi', 'Karachi'],
      ['Kuala Lumpur', 'Kuala Lumpur'],
      ['Kyiv', 'Kyiv'],
      ['Kuwait', 'Kuwait'],
      ['Lima', 'Lima'],
      ['London', 'London'],
      ['Lisbon', 'Lisbon'],
      ['Prague', 'Prague'],
      ['Puerto Rico', 'Puerto Rico'],
      ['Madrid', 'Madrid'],
      ['Melbourne', 'Melbourne'],
      ['Mexico City', 'Mexico City'],
      ['Minsk', 'Minsk'],
      ['Moscow', 'Moscow'],
      ['Mumbai', 'Mumbai'],
      ['Nairobi', 'Nairobi'],
      ['New Delhi', 'New Delhi'],
      ['Paris', 'Paris'],
      ['Rangoon', 'Rangoon'],
      ['Riga', 'Riga'],
      ['Riyadh', 'Riyadh'],
      ['Rome', 'Rome'],
      ['Santiago', 'Santiago'],
      ['Seoul', 'Seoul'],
      ['Singapore', 'Singapore'],
      ['Sofia', 'Sofia'],
      ['St. Petersburg', 'St. Petersburg'],
      ['Stockholm', 'Stockholm'],
      ['Sydney', 'Sydney'],
      ['Taipei', 'Taipei'],
      ['Tehran', 'Tehran'],
      ['Tijuana', 'Tijuana'],
      ['Tokyo', 'Tokyo'],
      ['Vienna', 'Vienna'],
      ['West Central Africa', 'West Central Africa'],
      ['International Date Line West', 'International Date Line West'],
      ['UTC', 'UTC']
    ]
  end

end
