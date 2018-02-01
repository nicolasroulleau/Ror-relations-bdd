require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :title => "MyString",
      :body => "MyText",
      :course_id => 1
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input[name=?]", "lesson[title]"

      assert_select "textarea[name=?]", "lesson[body]"

      assert_select "input[name=?]", "lesson[course_id]"
    end
  end
end
