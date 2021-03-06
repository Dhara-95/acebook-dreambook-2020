  def signup
    visit "/"
    click_button "Sign Up"
    fill_in "user[email]", with: "test@test.com"
    fill_in "user[username]", with: "test"
    fill_in "user[password]", with: "123456"
    click_button "Save User"
  end

  def login
    visit "/"
    fill_in "email", with: "test@test.com"
    fill_in "username", with: "test"
    fill_in "password", with: "123456"
    click_button "Login"
  end

  def create_post
    fill_in "post[message]", with: "Hello, world!"
    click_button "Create Post"
  end

  def create_comment
    fill_in "comment[body]", with: "I love this post!!!"
    click_button "Create Comment"
  end
