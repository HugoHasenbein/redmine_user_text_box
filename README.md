# redmine_user_text_box

Redmine plugin to provide a user text box on my page

### Use case(s)

Add a formatted text box to my page, with everything you can do on a wiki page. Use 'Redmine User text Box' to create a menu with dozens of shortcuts and links

![PNG that represents a quick overview](/doc/user_text_box_example.png)

### Install

1. download plugin and copy plugin folder redmine_user_text_box to Redmine's plugins folder 

2. restart server f.i.  

`sudo /etc/init.d/apache2 restart`

(no migration is necessary)

### Uninstall

1. go to plugins folder, delete plugin folder  

`rm -r redmine_user_text_box`

2. restart server f.i. 

`sudo /etc/init.d/apache2 restart`

### Use

Just install and go to 'my page'. The Add-select on the upper right of 'my page' will let you add a User Text Box. To create content click on the configure button of the user text box block.

**Have fun!**

### Localisations

* German
* English

**0.1.0**
  - supports zeitwerk, running on redmine 5+

**0.0.1** 
  - running on Redmine 3.4.6, 3.4.11
