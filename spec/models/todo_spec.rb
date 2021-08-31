require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'Todoが作れること' do
    todo = Todo.create(content: 'Hello')
    expect(todo).to be_valid
  end
end
