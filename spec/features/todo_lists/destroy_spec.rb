require 'spec_helper'

describe "Deleting todo lists" do
	let!(:todo_list) { TodoList.create(title: "Groceries", description: "Grocery list.")}

	binding.pry
	it "is successful when clicking destroy link" do
		visit "/todo_lists"
		within "#todo_list#{todo_list.id}" do
			click_link "Destroy"
		end
#		expect(page).to_not have_content(todo_list.title)
#		expect(ToDoList.count).to eq(0)
	end
end




