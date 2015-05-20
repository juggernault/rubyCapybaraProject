module AccountElements

  #declare page elements
  EMAIL_REGISTER_FORM = 'email_address'
  PASSWORD_REGISTERD_FORM ='password'
  JOIN_WITH_EMAIL_BUTTON = 'with Email'
  JOIN_NOW_BUTTON ='btnRegister'
  ENTER_YOUR_WORLD_OF_SPORT ='Enter your world of sport'
  PASSWORD = '_pasword'
  PASSWORD_VALUE = 1234567
  LOGINBUTTON = 'Account'
  DISCOVERPAGE ='discover'
  REGISTER_FIRST_NAME = 'register[first_name]'
  REGISTER_LAST_NAME = 'register[last_name]'
  REGISTER_USERNAME  = 'register[username]'
  USERNAME = 'test'
  USERNAME2 = 'testr'
  DOMAIN   = '@sportlobster.com'
  EMPTY_PAGE_CONTENT_TEXT ='You have not lobbed any content yet.'
  EMPTY_BLOGS_PAGE_CONTENT_OWN_PROFILE ='Write blogs to earn points from likes, comments and shares.'
  EMPTY_PREDICTION_PAGE_OWN_PROFILE = 'Make predictions to earn points and climb the leaderboard.'
  EMPTY_PHOTOS_AND_VIDEOS_OWN_PROFILE ='You have not added any photos or videos to lobs or blogs yet.'

  EMPTY_EMAIL_FIELD_ERROR = 'Email address can not be blank.'
  EMPTY_PASSOWRD_FIELD_ERROR ='Please give us the password you want to use.'
  WRONG_EMAIL_ADDRESS_ERROR ="The e-mail address you have entered doesn't appear to be valid, please try again."
  TOO_SHORT_PASSWORD_ERROR ='Passwords must be at least 6 characters long.
'
  BLOGS_LINKS = 'Blogs'
  PREDICTIONS_LINK = 'Predictions'
  PHOTOS_AND_VIDEOS_LINK = 'Photos & Videos'
  FOLLOWING_USERS = 'Following'
  SPORTLOBSTER_OFFICIAL ='Sportlobster Official'
  SPORTLOBSTER_OFFICIAL_USER_NAME ='@sportlobsterofficial'
  HOME = 'Feed'

  FANZONES_TAB = 'FANZONES'
  FOLLOWING_TAB ='FOLLOWING'
  JOIN_A_FANZONE_BUTTON = 'Join a Fanzone'
  FIND_AND_INVITE_FRIENDS_BUTTON = 'Find and invite friends'
  ACCOUNT_OPTION_ICON = '.sl-account-settings > a'
  ACOUNT_SETTINGS_LINK = 'Account settings'
  ACCOUNT_SETTINGS_PAGE_TITILE = 'Account Settings'
  ACCOUNT_TAB ='Account'
  EMAIL_NOTIFICATIONS_TAB ='Email Notifications'
  FIND_AND_INVITE_FRIENDS_TAB = 'Find & Invite Friends'
  MUTTED_USERS_TAB ='Muted users'
  ACCOUNT_FIRST_NAME_TEXT_FIELD ='sl-account-first-name'
  ACCOUNT_SAVE_CHANGES_BUTTON = 'Save changes'
  ACCOUNT_FIRST_NAME_VALIDATION_MESSAGE = 'Please give us your first name.'
  ACCOUNT_LAST_NAME_VALIDATION_MESSAGE = 'Please give us your last name.'
  ACCOUNT_USERNAME_VALIDATION_MESSAGE = 'Please give us a username that you would like to use.'
  ACCOUNT_EMAIL_VALIDATION_MESSAGE = 'Please give us your e-mail address.'
  ACCOUNT_INVALID_EMAIL_ADRESS = "The e-mail address you have entered doesn't appear to be valid, please try again."
  ACCOUNT_ALREADY_USED_USERNAME_VALIDATION ='The username you entered is already in use, please select another.'
  ACCOUNT_ALREADY_USED_EMAIL_ADRESS = 'The e-mail address you entered is already in use by another account.'
  FIRST_NAME_TOO_SHORT_ERROR = 'Please give us your first name.'
  LAST_NAME_TOO_SHORT_ERROR = 'Please give us your last name.'
  USERNAME_NAME_TOO_SHORT_ERROR = 'Please give us a username that you would like to use.'
  FIRSTNAME_SPECIAL_CHARS_VALIDATION ='Your first name contains invalid characters. It should only contain letters, apostrophe or hyphen.'
  LASTNAME_SPECIAL_CHARS_VALIDATION ='Your last name contains invalid characters. It should only contain letters, apostrophe or hyphen.'

  ACCOUNT_LOCATION_TEXT = 'London'
  ACCOUNT_GENDER_DROPDOWN_LIST = 'sl-account-gender'

  RENAMED_FIRST_NAME = 'TestUserAuto'
  RENAMED_LAST_NAME = 'TestAutoLastName'
  RENAMED_USERNAME = 'testren'
  RENAMED_FIRST_NAME_XPATH = "//input[@value='TestUserAuto']"
  RENAMED_LAST_NAME_XPATH = "//input[@value='TestAutoLastName']"
  RENAMED_USERNAME_XPATH = "//input[@value='testren']"
  ACCOUNT_LAST_NAME_TEXT_FIELD ='sl-account-last-name'
  ACCOUNT_USER_NAME_TEXT_FIELD = 'sl-account-username'
  ACCOUNT_EMAIL_TEXT_FIELD = 'sl-account-email'
  ACCOUNT_BIO_TEXT_BOX = 'sl-account-about'
  ACCOUNT_PASSWORD_FIELD = 'password'
  ACCOUNT_VERIFY_PASSWORD_FIELD = 'verify-password'
  ACCOUNT_CHANGE_PASSWORD_LINK = 'Change password'
  ACCOUNT_LOCATION_FIELD= 'sl-account-location'
  ACCOUNT_DAY_FIELD = 'dob[day]'
  ACCOUNT_MM_FIELD = 'dob[month]'
  ACCOUNT_YEAR_FIELD = 'dob[year]'
  ACCOUNT_GENDER_MALE = 'Male'
  LOG_OUT_LINK = 'Logout'
  LOGIN_LINK = '.btn-login'
  LOGIN_USERNAME_FIELD = '_username'
  LOGIN_PASSWORD_FIELD = '_password'
  LOGIN_BUTTON = '.btn-success'

  #define paths

  EMPTY_MUTED_USER_TEXT_PATH ='./data/account/empty_muted_users.txt'
  FANZONE_EMPTY_TEXT = './data/account/empty_fanzones_tab_feed.txt'
  FOLLOWING_EMPTY_TEXT ='./data/account/empty_following_tab_feed.txt'
  ERROR_MESSAGE_SHORT_PASSWORD_PATH ='./data/account/too_short_password.txt'
  JUST_ONE_FINAL_STEP_WINDOW_PATH = './data/account/just_one_final_step.txt'
  TOO_LONG_USERNAME_ERROR_MESSAGE = './data/account/username_error_message.txt'



end