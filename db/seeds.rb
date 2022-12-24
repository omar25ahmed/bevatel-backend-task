10.times.each do |i|
  school = School.create(name: Faker::Company.name)
  10.times.each do |i|
    school.students.create(name: Faker::Name.name)
  end
end
