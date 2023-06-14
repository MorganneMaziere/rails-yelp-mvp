# create db

puts 'Clear existing data'
Restaurant.destroy_all

puts 'Valid restaurant records'
restaurants = [
  {
    name: 'Chinese Delight',
    address: '123 Main Street',
    phone_number: '123-456-7890',
    category: 'chinese'
  },
  {
    name: 'Taste of Italy',
    address: '456 Elm Street',
    phone_number: '987-654-3210',
    category: 'italian'
  },
  {
    name: 'Sushi Paradise',
    address: '789 Oak Street',
    phone_number: '555-123-4567',
    category: 'japanese'
  },
  {
    name: 'La Belle France',
    address: '321 Maple Avenue',
    phone_number: '222-333-4444',
    category: 'french'
  },
  {
    name: 'Belgian Bites',
    address: '567 Pine Street',
    phone_number: '888-999-0000',
    category: 'belgian'
  }
]

puts 'Create the restaurants'
Restaurant.create(restaurants)

puts 'Database seeded with valid restaurant records.'
