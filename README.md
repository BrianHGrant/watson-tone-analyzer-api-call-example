
# Project Name: Watson Tone Analyzer API Call Example

## Description

Skeleton Application built on Ruby on Rails to send a block of text to tone analyzer. Uses the restclient api gem

## Ruby version
Version: 2.3.1<br>
Rails: '~> 5.0.0', '>= 5.0.0.1'

## System dependencies

This application requires:
  * Bundler
  * PostGresSQL

## Deployment instructions
  1. Clone Repo locally
  2. Navigate to local repo directly in your terminal
  3. Run 'bundle install'
  4. Create Databases
    * Run 'rails db:create'
    * Run 'rails db:migrate'
    * Run 'rails db:test:prepare'
  5. Create .env file (see below)
  6. Run 'rails server' to start local server
  7. Open 'localhost:3000' in your browser

## APIs and the .env
  This application makes use of the Watson api which offers a free level of access, which should provide adequate use for testing or individual deployment of this app.</a>
  * <a href="https://www.ibm.com/watson/developercloud/tone-analyzer.html">IBM Watson Tone Analyzer </a> - If you have not previously registered with IBM's developer cloud service, BlueMix, checkout their <a href="https://www.ibm.com/watson/developercloud/doc/getting_started/">Getting Started</a> guide.

Once registered, note your IBM user number and key. Create a .env file in the project root directory as follows:

    WATSON_USER_NUM="<YOUR_IBM_USER_NUMBER>"
    WATSON_PWORD="<YOUR_IBM_USER_KEY>"

Enter your actual credentials. Restart the server if it was running.

## Contact
  Contact me @ <a href="mailto:bhgrant@gmail.com">bhgrant8@gmail.com</a><br>
  
## License
  This program is Free Software under the GNU General Public License (GPL) version 3
  Visit: https://www.gnu.org/licenses/gpl.html
