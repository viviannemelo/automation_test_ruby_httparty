#coding: utf-8

DATABASE = {
  name: {
    name1: 'Alberto',
    name2: 'Fred',
    name3: 'Harry',
    name4: 'Carlos',
    name5: 'Jorge',
    name6: Faker::Name.name
  },

  salary: {
    salary1: 123,
    salary2: 321,
    salary3: 954,
    salary4: 648,
    salary5: 255,
    salary6: Faker::Number.number
  },

  age: {
    age1: 123,
    age2: 321,
    age3: 954,
    age4: 648,
    age5: 255,
    age6: Faker::Number.number(digits: 2)
  }
}
