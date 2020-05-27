class Dog  < ActiveRecord::Base
end

# Dog
#   inheritence
#     inherits from ActiveRecord::Base (FAILED - 1)
#   attributes
#     has a name and a breed (FAILED - 2)
#   .create
#     takes in a hash of attributes and uses metaprogramming to create a new dog object. Then it uses the #save method to save that dog to the database (FAILED - 3)
#   .save
#     saves an instance of the dog class to the database and then sets the given dogs `id` attribute (FAILED - 4)
#   .update
#     updates the record associated with a given instance (FAILED - 5)
#   .find_or_create_by
#     creates a dog if it does not already exist (FAILED - 6)
#   .find_by_name
#     returns a dog that matches the name from the DB (FAILED - 7)
#   .find_by_id
#     returns a dog that matches the name from the DB (FAILED - 8)

# Failures:

#   1) Dog inheritence inherits from ActiveRecord::Base
#      Failure/Error: expect(Dog.superclass).to eq(ActiveRecord::Base)
     
#        expected: ActiveRecord::Base
#             got: Object
     
#        (compared using ==)
     
#        Diff:
#        @@ -1,2 +1,2 @@
#        -ActiveRecord::Base
#        +Object
       
#      # ./spec/dog_spec.rb:16:in `block (3 levels) in <top (required)>'

#   2) Dog attributes has a name and a breed
#      Failure/Error: dog = Dog.new({name: "Fido", breed: "lab"})
     
#      ArgumentError:
#        wrong number of arguments (given 1, expected 0)
#      # ./spec/dog_spec.rb:22:in `initialize'
#      # ./spec/dog_spec.rb:22:in `new'
#      # ./spec/dog_spec.rb:22:in `block (3 levels) in <top (required)>'

#   3) Dog .create takes in a hash of attributes and uses metaprogramming to create a new dog object. Then it uses the #save method to save that dog to the database
#      Failure/Error: dog = Dog.create(name: "Ralph", breed: "lab")
     
#      NoMethodError:
#        undefined method `create' for Dog:Class
#      # ./spec/dog_spec.rb:30:in `block (3 levels) in <top (required)>'

#   4) Dog .save saves an instance of the dog class to the database and then sets the given dogs `id` attribute
#      Failure/Error: dog = Dog.new({name: "Fido", breed: "lab"})
     
#      ArgumentError:
#        wrong number of arguments (given 1, expected 0)
#      # ./spec/dog_spec.rb:38:in `initialize'
#      # ./spec/dog_spec.rb:38:in `new'
#      # ./spec/dog_spec.rb:38:in `block (3 levels) in <top (required)>'

#   5) Dog .update updates the record associated with a given instance
#      Failure/Error: let(:teddy) {Dog.new(name: "Teddy", breed: "cockapoo")}
     
#      ArgumentError:
#        wrong number of arguments (given 1, expected 0)
#      # ./spec/dog_spec.rb:6:in `initialize'
#      # ./spec/dog_spec.rb:6:in `new'
#      # ./spec/dog_spec.rb:6:in `block (2 levels) in <top (required)>'
#      # ./spec/dog_spec.rb:46:in `block (3 levels) in <top (required)>'

#   6) Dog .find_or_create_by creates a dog if it does not already exist
#      Failure/Error: dog1 = Dog.create(name: 'Teddy', breed: 'cockapoo')
     
#      NoMethodError:
#        undefined method `create' for Dog:Class
#      # ./spec/dog_spec.rb:55:in `block (3 levels) in <top (required)>'

#   7) Dog .find_by_name returns a dog that matches the name from the DB
#      Failure/Error: let(:teddy) {Dog.new(name: "Teddy", breed: "cockapoo")}
     
#      ArgumentError:
#        wrong number of arguments (given 1, expected 0)
#      # ./spec/dog_spec.rb:6:in `initialize'
#      # ./spec/dog_spec.rb:6:in `new'
#      # ./spec/dog_spec.rb:6:in `block (2 levels) in <top (required)>'
#      # ./spec/dog_spec.rb:63:in `block (3 levels) in <top (required)>'

#   8) Dog .find_by_id returns a dog that matches the name from the DB
#      Failure/Error: let(:teddy) {Dog.new(name: "Teddy", breed: "cockapoo")}
     
#      ArgumentError:
#        wrong number of arguments (given 1, expected 0)
#      # ./spec/dog_spec.rb:6:in `initialize'
#      # ./spec/dog_spec.rb:6:in `new'
#      # ./spec/dog_spec.rb:6:in `block (2 levels) in <top (required)>'
#      # ./spec/dog_spec.rb:72:in `block (3 levels) in <top (required)>'

# Finished in 0.03116 seconds (files took 1.09 seconds to load)
# 8 examples, 8 failures
