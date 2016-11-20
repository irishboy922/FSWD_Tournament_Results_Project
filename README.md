# Udacity's Tournament Results Project

For the Tournament Results project, we were asked to write a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. The game tournament requires the use of the Swiss system for pairing up players in each round: players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible. To complete the project we had to define the database schema and write the python code that will make use of the database.

## How to Download the Files

First you will need to either download or clone the project files to your local machine.
To clone this project to your computer, open a terminal window and ` cd ` to the directory you would like to save the files. Then run the following command:
```
$ git clone https://github.com/irishboy922/FSWD_Tournament_Results_Project.git
```

## How to Run the Program

The program should be run in a Vagrant Virtual Machine using Virtual Box. If you do not have [Vagrant](https://www.vagrantup.com/downloads.html) or [Virtual Box](https://www.virtualbox.org/wiki/Downloads) installed and setup, please first visit the links I have provided to download and install them (both sites have good installation instructions).

Once you have Vagrant and Virtual Box installed, you will need to ` cd ` to the path where you downloaded and unzipped or cloned the "FSWD_Tournament_Results_Project" folder in your terminal window. Once you are in that directory you will need to type in the following command to get set up a new Vagrant virtual machine environment based on the ` Vagandfile ` and ` pg_config.sh ` settings included in the "FSWD_Tournament_Results_Project" project folder:
```
$ vagrant up
```
**NOTE: It may take a while to finish downloading the necessary components and setting up the environment.**

After your new Vagrant Virtual Machine is up and running, you will need to type in the following command to log into the new virtual machine:
```
$ vagrant ssh
```

You should now see ` vagrant@vagrant-ubuntu-trusty-32:~$ ` as your current directory in the folder. From here you will need to use ` cd /vagrant ` to move to the shared folder that stores all the project files on the virtual machine. If you do a ` ls ` command here, you should be able to see ` README.md `, ` Vagrantfile `, ` pg_config.sh ` files and a ` tournament ` directory.

Next move into the ` tournament ` directory by typing in the command ` cd tournament ` so you can initialize the database and tables for the project. Once in the ` tournament ` directory open the psql command line interface by typing in the command ` psql ` and hitting enter. Now that you are in the psql command line interface you will need to initialize the project database and tables in order for the program to run properly. The ` tournament.sql ` file in the ` tournament ` directory has all the necessary code needed to setup the necessary database and tables. To import the file for automatic setup use the ` \i tournament.sql ` command and press enter. After completing, use the ` \q ` command to leave the psql command line interface.

Now you should be back at the ` vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ ` directory in your terminal window. From here just execute the command ` python tournament_test.py ` to run the test program and get the results. Note that the results will be printed to the terminal window.

Enjoy!

## License
[MIT License](https://opensource.org/licenses/MIT)