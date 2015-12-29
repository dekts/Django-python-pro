# Django-python-pro
Simple Django project of Bookmark Blog

Note: Under Linux and Mac OS X root privileges may be required.

Django is written completely in Python. Therefore Python needs to be installed first.

$ sudo apt-get install python2.7.6

If you have Python 3.3 or Python 2 with a version lower than 2.7.9 installed, your Python installation does not contain the module ensurepip. In this case pip can be installed with the help from a bootstrap script. If curl is installed, you can use it to download pip at the command line. Otherwise just use the browser.

$ curl -O https://bootstrap.pypa.io/get-pip.py

When the bootstrap script has been downloaded execute it to install pip:

$ sudo python get-pip.py

After a successful upgrade or installation, you can test pip as follows:

$ pip --version

For create virtual host then remove the index.html file.
For that you need to install

$ sudo pip install --upgrade Django==1.8.2

After a successful installation, you can check the Django version number with the following command:

$ django-admin.py --version

For designing purpose you need to install pytz package
we will use the excellent django-crispy-forms package to get our forms rendered nicely.
To install both packages execute:

$ pip install pytz django-crispy-forms

