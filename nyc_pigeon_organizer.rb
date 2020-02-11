 require 'pp'

def nyc_pigeon_organizer(data)
  # pp data
  # start with a hash where keys are pigeon attributes and values are arrays of names who have that attribute
  # end with a hash where keys are pigeon names and values are arrays of their attributes
  # keys are all symbols, so need to convert to strings and vice versa
  
  # need to reduce to a new hash in the new format
  # look through each attribute key in the dataset. each of it's keys have a value of an array of names
  # need to compile an array of unique names found in 
  pigeon_names = {}
  data.each{ |key, value|
    value.each { |key, name_arr|
      name_arr.each { |name|
        pigeon_names[name] = {color: [], gender: [], lives: []}
      }
    }
  }
  
  pigeon_names.each{ |birdname, attributes_hash|
    attributes_hash.each { |attribute, arr|
      data[attribute].each { |variant, name_arr|
        if name_arr.include?(birdname)
          pigeon_names[birdname][attribute].push(variant
        end
      }
    }
  }
  pp pigeon_names 
end

