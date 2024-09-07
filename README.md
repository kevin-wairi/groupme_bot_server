# GroupMe Bot Server

This is a Ruby on Rails application for running a GroupMe bot server. Follow the steps below to install and run the application.

## Prerequisites

Before installing the application, ensure you have the following installed:

1.  **Ruby** (version 2.6.0 or higher)
2.  **Rails** (version 6.0 or higher)
3.  **SQLite3** (or any other database management system of your choice)
4.  **Git**
5.  **Bundler**

### Installation Steps

#### 1. Install Ruby

If you don't have Ruby installed, download the Windows installer from [RubyInstaller](https://rubyinstaller.org/).

-   Follow the installation steps and make sure to include the MSYS2 development toolchain when prompted, as it’s required for compiling native extensions.

After installation, verify it by running:

bash

Copy code

`ruby -v` 

#### 2. Install SQLite3

SQLite3 is often used as a database for Rails applications in development mode. Download it from the SQLite3 website and follow the instructions for setting it up on Windows.

Add SQLite3 to your system’s environment variables for easier access via command line.

#### 3. Install Rails

If you don’t already have Rails installed, run the following command in your terminal to install it via `gem`:

bash

Copy code

`gem install rails` 

Verify the installation by checking the Rails version:

bash

Copy code

`rails -v` 

#### 4. Clone the Repository

Clone the repository of the GroupMe bot server:

bash

Copy code

`git clone https://github.com/kevin-wairi/groupme_bot_server.git
cd groupme_bot_server` 

#### 5. Install Dependencies

Make sure you have Bundler installed. If not, you can install it using:

bash

Copy code

`gem install bundler` 

Now, run Bundler to install all the necessary gems:

bash

Copy code

`bundle install` 

#### 6. Set Up Environment Variables

You’ll need to set up environment variables for your GroupMe API keys.

Create a `.env` file in the root of the project directory and add the following variables:

bash

Copy code

`GROUPME_BOT_ID=your_bot_id
GROUPME_ACCESS_TOKEN=your_access_token` 

Replace `your_bot_id` and `your_access_token` with your actual GroupMe bot credentials.

#### 8. Run the Server

Start the Rails server using:

bash

Copy code

`rails server` 

By default, this will run the application on `http://localhost:3000`.

### Additional Configuration

-   You may need to configure your firewall or port settings on Windows to allow incoming connections if you're running this as a publicly accessible server.
    
-   If you're using a reverse proxy or have additional requirements, update the `config/environments` files accordingly.
    
## Contributing

[](https://github.com/kevin-wairi/groupme_bot_server#contributing)

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are  **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## License

[](https://github.com/kevin-wairi/groupme_bot_server/blob/main/#license)

Distributed under the MIT License. See  `LICENSE.txt`  for more information

### Troubleshooting

-   **Windows Firewall**: Ensure that your firewall allows Ruby to run, and if necessary, open port 3000 for HTTP traffic.
-   **RubyGems Issues**: If you run into issues with gems, you may need to update the `Gemfile.lock` or re-run `bundle install`.
-   **Database**: Ensure that your SQLite3 or other database service is correctly configured and running.