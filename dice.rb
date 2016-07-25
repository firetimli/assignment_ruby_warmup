def roll_dice(num_dice)
  dice=[1,2,3,4,5,6]
  sum=0
  num_dice.times do
    sum += dice.sample
  end
  return sum;
end

def dic_outcomes(num_dice, num_times)
  results=Hash.new(0)

  num_times.times do
    key =roll_dice(num_dice)
    results[key] += 1
  end

  results = results.sort_by {|key,value| key}

  results.each do |key, value|
    if key < 10
      puts "#{key}: " + "#"*value
    else
      puts"#{key}:" + "#"*value
    end
  end
  return results

end
