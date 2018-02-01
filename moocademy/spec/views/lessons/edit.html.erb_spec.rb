require 'rails_helper'

RSpec.describe "lessons/edit", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :title => "MyString",
      :body => "MyText",
      :course_id => 1
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input[name=?]", "lesson[title]"

      assert_select "textarea[name=?]", "lesson[body]"

      assert_select "input[name=?]", "lesson[course_id]"
    end
  end
end
