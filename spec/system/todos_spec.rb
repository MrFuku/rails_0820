require 'rails_helper'

RSpec.describe "Todos", type: :system do
  before do
    driven_by(:rack_test)
    @todo = Todo.create(content: 'Nya-n')
  end

  it 'Display Nya-n' do
    visit todos_path
    expect(page).to have_content @todo.content
  end
end
