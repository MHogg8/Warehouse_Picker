#Question 1 function: Get a bay item
def single_bay(array, place)
  for items in array #loops through our data array @warehouse
    for keys, values in items#loops through hashes in array
      if keys == place#if the keys in hash == to our input
      return values #returns the answer
      end
    end
  end
end


#Question 2 function: Get a bay number
def single_bay_number(array, name)
  for items in array #loops through the items in our @warehouse array
    for keys, values in items #loops through the hashes in @warehouse
      if values == name #if the two are equal 
      return keys #then return the answer
      end
    end
  end
end


#Question 3 function: Get multiple bay items
def multiple_bay_thing(hash, array)
item_name = []        # defines the variable we need for answers
    for given_bays in array #loops the items in array I passed it
      for items in hash     #loops the items in hash I passed it
        for key, value in items #loops the hash identify k and v
          if key == given_bays #if the values are equal
            item_name.push(value) #puts them in our variable
          end
        end
      end
    end
    return item_name #returns our variable with the answers
end


#Question 4: Get multiple bay numbers
def multiple_bay_number(hash, array)
bay_number = []           #defines the variable we need for answers
  for names in array      #loops through the array I passed to it
    for items in hash     #loops through the hash I passed to it
      for key, value in items #identifies keys and values in hash
        if value == names       #if the two values are same 
          bay_number.push(key) #then pass the keys to an array
        end
      end
    end
  end
  return bay_number #returns the new array
end


#Question 5 checks for multiple items
def multiple_bay_thing_q5(hash, array)
multiple_bay_thing(hash, array)
end

#Question 5 check the distance
def multiple_bay_number_distance(hash, array)
 flattened = []#defines the variable we flatten data too
 numbers_we_want = []
  for items in hash #this loops through all the items in the 
    flattened<<items.to_a   #hash and pushes them to a new array
  end  
     flattened = flattened.flatten #flattens the array 
       for bays in array           #loops through the array 
        for items in flattened      #loops through the items 
          if items == bays        #if the items are the same
            numbers_we_want<<flattened.index(items)#push to new ary
          end
        end
       end
     numbers_we_want.sort! #sorts the array so that we can get 
                                #the highest and lowest values.
    answer = numbers_we_want.last- numbers_we_want.first  
    answer = answer/2 #divides the answer by 2 this reflects
    return answer          #that the flattened array                
end                        #has keys and values


#Question 6 (a)
def multiple_bay_number_Qu6(hash, array) #this isn't the right answer
multiple_bay_number(hash, array).sort
end
