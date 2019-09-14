def nyc_pigeon_organizer(data)
  # write your code here!
  names = []
  pidgeons ={}
  #first popuplate the names array with pidgeon names
  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names << name if !names.include?(name)
      end
    end
  end

  #now create the attributes hash for each entity (pidgeon)
  names.each do |entity|
    pidgeons[entity] = Hash.new { |k, v| k[v] = []} #esentially creating a pidgeon properties
    data.each do |attribute, items|
      pidgeons[entity][attribute]
      items.each do |feature, array|
        array.each do |name|
          pidgeons[name][attribute] << feature.to_s if name == entity
        end
      end
    end

  end

  pidgeons




end
