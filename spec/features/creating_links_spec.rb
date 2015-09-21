feature 'Creating links' do
  scenario 'I can create a new link' do
    visit '/links/new_link'
    fill_in 'url',   with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    click_button 'Add Link'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end
  end
end
