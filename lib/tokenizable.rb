module Tokenizable
  # We use 63 characters and tokens. For a length of 10, it gives 63**10 possible tokens  
  @@token_chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  
  def self.random_token
    token = ''
    10.times { token << @@token_chars[rand(@@token_chars.length)] }
    token
  end
   
  def Tokenizable.included(mod)
        mod.class_eval do
          def before_create
            verified=false
            while !verified
              self.token = Tokenizable.random_token
              verified=!self.class.exists?(:token=>self.token)
            end
            return true
          end
        end
    end
end