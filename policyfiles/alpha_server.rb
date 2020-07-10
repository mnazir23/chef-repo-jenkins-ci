# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'alpha_server'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'apache_tomcat',
         'notepad_plus'

cookbook 'apache_tomcat', path: '../cookbooks/apache_tomcat'
cookbook 'notepad_plus', path: '../cookbooks/notepad_plus'