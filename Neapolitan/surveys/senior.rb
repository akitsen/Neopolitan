# encoding: UTF-8
survey "Senior Seminar Survey" do
  section "Class Survey" do
    # In a quiz, both the questions and the answers need to have reference identifiers
    # Here, the question has reference_identifier: "1", and the answers: "oint", "tweet", and "moo"
    question_1 "Did you enjoy senion seminar?", :pick => :one, :correct => "oink"
    a_oink "Yes"
    a_tweet "No"
    a_moo "Refuse to answer..."

    question_2 "How difficult was your senior project for you?", :pick => :one
    a_1 "Hard"
    a_2 "Medium"
    a_3 "Harder than I had anticipated it to be..."
  end
end