module LobbingElements

  #declare page elements

  LOBBING_TEST_USERNAME = 'lobuser'
  LOBBING_TEST_DOMAIN = '@sportlobster.com'
  LOBBING_TEXT_AREA_CSS = '#sl-new-post-form .richtextarea'
  LOBBING_TEXT_AREA_ADD_CONTENT_MODAL = '.sl-dialog.add-content #sl-new-post-form .richtextarea'
  LOBBING_LOB_BUTTON = 'Lob'
  LOBBING_LOB_BUTTON_DISABLED_CSS = '#sl-new-post-form button[type=submit]:disabled'
  LOBBING_LOB_BUTTON_ENABLED_CSS = '#sl-new-post-form button[type=submit]'
  LOB_TEXT_AREA_PLACEHOLDER_TEXT ='Start writing... 500 characters maximum. You can also mention users by typing @username'
  PHOTO_LOB_TEXT_AREA_PLACE_HOLDER ='Say something about this photo...'
  MORE_THAN_500_CHARS_ERRR_MESSAGE = "Please provide 500 characters or less."
  ADD_LOB_GLOBAL_BUTTON ='.sl-fonticon-add-content'
  LOB_TEXT_FIELD_WITH_PLACEHOLDER_TEXT = '#sl-new-post-form .richtextarea[placeholder="Start writing... 500 characters maximum. You can also mention users by typing @username"]'
  LOB_TO_DROP_DOWN_LIST ='.taxonomy-search-dropdown.empty .dropdown-btn .text'
  MY_FOLLOWERS_OPTION = '.selectable-element .my-followers'
  LOB_TEXT_AREA_BY_ID ='new-post-input'
  ANTI_SPAM_LOBBING_MESSAGE ="You've already added this content"
  CHOOSE_FANZONE_LIST_ELEMENTS = '.taxonomy-search-dropdown .dropdown-menu .selectable-element .sl-taxonomy-logo'
  SEARCH_ALL_FANZONE_FIELD = '.taxonomy-search-dropdown .search-input'
  GLOBAL_BUTTON_TEXT ='global button'
  CLOSE_ADD_CONTENT_MODAL ='.sl-close-overlay a'
  CAMERA_BUTTON='sl-post-photo-input'

  EMPTY_CONTENT =""
  LOB_POSTED_FROM_SCORES_PAGE ='AUTOMATED LOB POSTED FROM SCORES PAGE'
  LOB_POSTED_FROM_DISCOVER_PAGE='AUTOMATED LOB POSTED FROM DISCOVER PAGE'
  LOB_POSTED_FROM_PREDICT_PAGE ='AUTOMATED LOB POSTED FROM PREDICT PAGE'
  LOB_POSTED_FROM_ACCOUNT_PAGE ='AUTOMATED LOB POSTED FROM ACCOUNT PAGE'
  LOB_POSTED_FROM_ACCOUNT_EMAIL_PAGE ='AUTOMATED LOB POSTED FROM ACCOUNT EMAIL PAGE'
  LOB_POSTED_FROM_ACCOUNT_FRIENDS_PAGE ='AUTOMATED LOB POSTED FROM ACCOUNT FRIENDS PAGE'
  LOB_POSTED_FROM_ACCOUNT_MUTED_PAGE ='AUTOMATED LOB POSTED FROM ACCOUNT MUTED PAGE'
  IMAGE_1646x1230='1646x1230'
  IMAGE_800_600='800X600'
  IMAGE_PREVIEW_SELECTOR ='#sl-new-post-form .image-preview .remove-image img'


  #end of elements delcarations



  #lob files text paths

  LOB_100_CHARS_PATH = './data/lobbing/lob_100_chars.txt'
  LOB_499_CHARS_PATH = './data/lobbing/lob_499_chars.txt'
  LOB_500_CHARS_PATH = './data/lobbing/lob_500_chars.txt'
  LOB_501_CHARS_PATH = './data/lobbing/lob_501_chars.txt'
  LOB_SPECIAL_CHARS_PATH = './data/lobbing/lob_special_chars.txt'
  LOB_CONTENT_TO_FANZONE = './data/lobbing/lob_posted_to_fanzone.txt'
  LOB_CONTENT_TO_FANZONE2 = './data/lobbing/lob_2dn_fanzone.txt'
  LOB_ARABIC_CONTENT_PATH = './data/lobbing/arabic_lob.txt'
  LOB_FRENCH_CONTENT_PATH = './data/lobbing/french_lob.txt'
  LOB_UNICODE_CONTENT_PATH = './data/lobbing/unicode_lob.txt'
  LOB_POSTED_FROM_FANZONE_SCREEN = './data/lobbing/lob_posted_from_fanzone.txt'
  LOB_CONTENT_SPAMMING = './data/lobbing/lob_content_spamming.txt'
  LOB_499_GLOBAL_ADD ='./data/lobbing/lob_499_global_add.txt'
  LOB_500_GLOBAL_ADD ='./data/lobbing/lob_500_global_add.txt'
  IMAGE_FOR_LOB_1646X1230_JPEG_PATH ='./data/lobbing/image/1646x1230.jpg'
  IMAGE_FOR_LOB_800X600_PNG_PATH='./data/lobbing/image/png_800_600.png'


#/Users/teddymihali/Documents/ruby_automation/rubyworkspace/sportlobster-website/sportlobster-website

end