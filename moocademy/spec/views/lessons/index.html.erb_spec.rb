require 'rails_helper'

RSpec.describe "lessons/index", type: :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        :title => "Title",
        :body => "MyText",
        :course_id => 2
      ),
      Lesson.create!(
        :title => "Title",
        :body => "MyText",
        :course_id => 2
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
