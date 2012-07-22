#!/usr/bin/python2.6 python

from bottle import route, run, template, get, post,request,static_file,error
from novainterface import callnova


@get('/')
def login():
    return template('login_template')



@post('/login') # or @route('/login', method='POST')
def login_submit():
    name     = request.forms.get('name')
    password = request.forms.get('password')
    print name, password
    if check_login(name, password):
        return template('reserve_template')
    else:
        return template('error_template')


@post('/reserve')
def reserve():
   image = request.forms.get('image')
   time_span = request.forms.get('time_span')
       
   # create instance
   ip = create_instance(image,time_span)
   if ip != '':
      return template('info_template', ip=ip)
   else:
      return template('error_template')
   

@error(404)
def error404(error):
    return template('error_template', error=error)




#*********static files*************************
@route('/bootstrap/css/<filename>')
def send_static(filename):
  return static_file(filename, root='/home/dan/Documents/hackathon/bootstrap/css')


#********Private Functions***********************

# create instance
def create_instance(image,time_span):
   print image,time_span
   return "10.0.0.3"

# check the login information
def check_login(name,password):
  if name != '' and password != '':
    return 1
  else:
    return 0



run(host='localhost', port=8080)
