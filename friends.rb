def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for dish in person[:favourites][:things_to_eat]
    if dish == food
      return true
    end
  end
  return false
end

#4
def add_friend(person, friend)
  #friends_plus_one = person[:friends] << friend
  #friends_plus_one.length
  person[:friends] << friend
end

#5
def remove_friend_name(person, friend_name)
  friends = person[:friends]
  deleted_friend = friends.delete(friend_name)
  return friends.length
end

#6
def add_all_people_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

#7
def lend_person_money(lender, lendee, money_loaned)
  lender[:monies] -= money_loaned
  lendee[:monies] += money_loaned
end

#8

def add_foods_together(people)
  all_foods = []
  for person in people
    all_foods << person[:favourites][:things_to_eat]
  end
end
