Factory.define :user do |f|
  f.first_name { Forgery::Name.first_name }
  f.last_name { Forgery::Name.last_name }
  
end
