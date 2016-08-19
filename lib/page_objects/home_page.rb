class HomePage < SitePrismPage
  set_url '/'

  def search_for_term(search_term)
    search_input_field.set search_term
    search_input_field.native.send_keys(:return)
    SearchResultPage.new
  end
end
