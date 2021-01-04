require 'pry'

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

def nyc_pigeon_organizer(hash)
  new_hash = {}
  hash.each do |att, att_vals|
    att_vals.each do |val, names|
      names.each do |name|
        if !new_hash[name]
          new_hash[name] = {
            color: [],
            gender: [],
            lives: []
          }
        end
        new_hash[name][att].push(val.to_s)
      end
    end
  end
  new_hash
end

print nyc_pigeon_organizer(pigeon_data)