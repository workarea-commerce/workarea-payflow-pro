Workarea Payflow Pro
================================================================================

Payflow Pro plugin for the Workarea platform.

Installation
--------------------------------------------------------------------------------

Add the following block to your gem file:

    # ...
    gem 'workarea-payflow_pro', source: 'https://gems.weblinc.com'
    # ...

Or use a source block:

    # ...
    source 'https://gems.weblinc.com' do
      gem 'workarea-payflow_pro'
    end
    # ...

Update your application's bundle.

    cd path/to/application
    bundle

Creating a Test Account
--------------------------------------------------------------------------------

For testing purposes you can create a test account at https://registration.paypal.com/welcomePage.do
Be sure to select the "I do not have a Processor" option. This will create a test account for you.

After completing and verifying the registration process you will need to create an API user in order to begin testing.

Create a user by logging into the admin system and navigating to "Account Administration -> Add User"
This new user should have the pre-defined role of 'API_FULL_TRANSACTIONS'

Once this user is created you can add the login information to your secrets:

    payflow_pro:
        user:
        login:
        password:


Documentation
--------------------------------------------------------------------------------

Admin Login Screen:
## https://manager.paypal.com/

Developer Documentation
## https://developer.paypal.com/docs/classic/payflow/payflow-pro/payflow-pro-integration/


Workarea Platform Documentation
--------------------------------------------------------------------------------

See [http://developer.weblinc.com](http://developer.weblinc.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------

Copyright WebLinc 2018. All rights reserved.

For licensing, contact sales@workarea.com.
