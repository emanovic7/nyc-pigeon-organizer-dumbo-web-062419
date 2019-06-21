 require 'pry'
#




#each_with_object practice

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(pigeon_data)

  pigeon_data.each_with_object({}) do |(key, values), pigeon_list|

    values.each do |attribute, names|
      names.each do |name|
        if !pigeon_list.keys.include?(name)
          pigeon_list[name] = {}
        end
        #binding.pry
      end
      #binding.pry
      pigeon_list.each do |name, value|
        pigeon_list[name][key] = []

        if values[attribute].include?(name)
          pigeon_list[name][key] << attribute.to_s
        end

          #binding.pry
        #binding.pry
      end

    end


    # pigeon_list.each do |name, value|
    #   pigeon_list[name][key] = []
    #   #binding.pry
    # end

    #binding.pry
  end

end
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
# }
