require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'Todoが作れること' do
    todo = Todo.new(content: 'Hello')
    expect(todo).to be_valid
  end
end
