def blank_seating_chart(number_of_rows, seats_per_row)
  Array.new(number_of_rows) { Array.new(seats_per_row) }
end

def add_seat_to_row(chart, row_index, seat_to_add)
  chart[row_index].push(seat_to_add)
  chart
end

def add_another_row(chart, row_to_add)
  chart.push(row_to_add)
end

def delete_seat_from_row(chart, row_index, seat_index)
  chart[row_index].delete_at(seat_index)
  chart
end

def delete_row_from_chart(chart, row_index)
  chart.delete_at(row_index)
  chart
end

def count_empty_seats(chart)
  chart.flatten.count { |seats| seats == nil }
end

def find_favorite(array_of_hash_objects)
  array_of_hash_objects.each do |h|
    h.each do |k,v|
      if k == :is_my_favorite? && v == true
      return h
      end
    end
  end
  return nil

      # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil

  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key
end