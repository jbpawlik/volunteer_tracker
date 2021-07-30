require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('spec_helper')

describe('create a project path', {:type => :feature}) do
  it('creates a project and then goes to the project page') do
    visit('/projects')
    click_on('Add a new project')
    fill_in('project_title', :with => 'Stink Removal')
    click_on('Add project')
    expect(page).to have_content('Stink Removal')
  end
end