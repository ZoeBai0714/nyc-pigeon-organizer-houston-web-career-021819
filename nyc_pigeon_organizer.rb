def nyc_pigeon_organizer(data)
  pigeon_list = {}
 data.collect do |info_type, info|
    if info_type == :color
      pigeon_list["Theo"]={}
      pigeon_list["Theo"][info_type] = []
     info.collect do |each_color, names|
      if names.include?("Theo")
       pigeon_list["Theo"][info_type] << each_color.to_s
      end
     end
    end
  end
end