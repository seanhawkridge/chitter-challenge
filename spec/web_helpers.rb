
def sign_up(name: 'Sean', username: 'seanh', email: 's@s.com',
              password: 'password',
              password_confirmation: 'password')
  visit('/users/new')
  fill_in :name, with: name
  fill_in :username, with: username
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign Up'
end

def sign_in(email:, password:)
  visit '/'
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Sign in'
end

def double_sign_up_with_peep
  sign_up(name: 'Sean', username: 'seanh', email: 's@s.com',
                password: 'password',
                password_confirmation: 'password')
  fill_in :peep, with: 'Lorem ipsum dolor si amet'
  click_button('Post Peep')
  click_button('Sign Out')
  sign_up(name: 'Steve', username: 'steve', email: 'st@s.com',
                password: 'password',
                password_confirmation: 'password')
end
