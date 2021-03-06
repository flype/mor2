module SelectDate
  
  DATE_TIME_SUFFIXES = {
    :year   => '1i',
    :month  => '2i',
    :day    => '3i',
    :hour   => '4i',
    :minute => '5i'
  }
  
  def select_date(date_to_select, options ={})
    date = date_to_select.is_a?(Date) || date_to_select.is_a?(Time) ? 
              date_to_select : Date.parse(date_to_select) 

    id_prefix = Nokogiri::HTML(response.body).xpath("//label[text()='#{options[:from]}']").first[:for]

    select date.year, :from => "#{id_prefix}_#{DATE_TIME_SUFFIXES[:year]}"
    select date.strftime('%B'), :from => "#{id_prefix}_#{DATE_TIME_SUFFIXES[:month]}"
    select date.day, :from => "#{id_prefix}_#{DATE_TIME_SUFFIXES[:day]}"
  end
  
  def current_url
    selenium.get_location.gsub("http://localhost:3001", "")
  end
  
end

World(SelectDate)