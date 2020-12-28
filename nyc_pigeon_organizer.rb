def nyc_pigeon_organizer(data)
  by_name = {}
  name_arr = data[:gender][:male] + data[:gender][:female]
  name_arr.each do |name|
    name_hash = {}
    name_hash[name] = {}
    data.each do |outer, inner|
      name_hash[name] = name_hash[name].merge(hash_maker(name, data, outer))
    end
    by_name = by_name.merge(name_hash)
  end
  return by_name
end

def hash_maker(name, hash, key)
  return {key => (hash[key].select {|k, v|v.include?(name)}.keys).map {|ele| ele.to_s}}
end