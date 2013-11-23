# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Credentials for login to private repos - set your credentials in your local .bash_profile by adding 'export ENV_VARIABLE="your_username_pwd_etc"'
# ENV_VARIABLE corresponds to what is inside the ENV block below

GITHUB_ORG = ENV['LT_GITHUB_ORG']
LT_WEB_USER = ENV['LT_WEB_USER']
LT_WEB_PWD = ENV['LT_WEB_PWD']
LT_OAUTH_CLIENT_ID = ENV['LT_OAUTH_CLIENT_ID']
LT_OAUTH_CLIENT_SECRET = ENV['LT_OAUTH_CLIENT_SECRET']
GITHUB_PERSONAL_ACCESS_TOKEN = ENV['GITHUB_PERSONAL_ACCESS_TOKEN']
DATABASE_URL = 'postgres://loaapunygsjawb:jc1hED5rCBMWwxdr_K-XPFya0P@ec2-107-20-228-206.compute-1.amazonaws.com:5432/da6kbs3lj65bgf'

# Initialize the Rails application.
LibraryThing::Application.initialize!
