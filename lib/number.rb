
module Numbers

  BIOTEXT = './data/account/bio.txt'
  BLOG_CONTENT_TEXT=''
  BLOG_TITILE_TEXT =''
  LOG_TEXT_ONLY = ''
  LOB_TEXT_PHOTO = ''
  NUMBER = './lib/number.txt'
  FB_TW_DISCONNECTING_MESSAGE = './data/facebook/fb_tw_deny_text.txt'
  UNLINK_TWITTER_MESSAGE = './data/twitter/unlinktwittermessage.txt'



  def write_file_number
    Dir.pwd
    contents=read_file
    open('./lib/number.txt', 'w') { |f|
      f.puts contents.to_i+1
    }

  end

  def read_file
    contents = File.open("./lib/number.txt", "r"){ |file| file.read }
    return contents
    end
  end

def read_file_content(filepath)
  contents = File.open(filepath ,"r") {|file| file.read}
  return contents

end

def write_league_id
  Dir.pwd
  contents=read_file
  open('./lib/leagueid.txt', 'w') { |f|
    f.puts contents.to_i+1
  }

  end


