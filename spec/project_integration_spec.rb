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

describe('update a project title', {:type => :feature}) do
  it('goes to the edit project page and enters a new title') do
    visit('/')
    visit('/projects')
    click_on('Add a new project')
    fill_in('project_title', :with => 'Stink Removal')
    click_on('Add project')
    click_on('Stink Removal')
    click_on('Stink Removal')
    fill_in('title', :with => 'Stank Retriever')
    click_on('Update')
    expect(page).to have_content('Stank Retriever')
  end
end