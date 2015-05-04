# encoding: UTF-8
survey "Test1" do

  section "Simple date questions" do

    q "What is your birth date?"
    a :date

    q "At what time were you born?"
    a :time

    q "When would you like to schedule your next appointment?"
    a :datetime

    q "What is your favorite color?"
    a :string

  end
end