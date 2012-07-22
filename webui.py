#!/usr/bin/python2.6 python

from bottle import route, run, template, get, post,request,static_file,error
from novainterface import callnova


@get('/')
def login():
    return template('login_template')



@post('/login')
def login_submit():
    name     = request.forms.get('name')
    password = request.forms.get('password')
    print name, password
    existed = check_login(name,password)
    if existed:
      instance = check_instance(name)
      if instance is not None: # show instance if yes
        ip = "102.02.20.2" #instance.address
        url = "http://21333.3.3.3..33.3..3" #instance.url
        instance_id = "instance id" #instance.id
        return template('info_template',name=name, ip=ip, url=url,instance_id=instance_id)
      else: # reserve instance if no
         return template('reserve_template',name=name)
    else:
        return template('error_template')

@post('/logout')
def logout():
  name = request.forms.get('name')
  print name
  return template('login_template')

@post('/reserve')
def reserve():
   name = request.forms.get('name')
   image = request.forms.get('image')
   time_span = request.forms.get('time_span')
       
   # create instance
   instance = create_instance(image,time_span)
   
   ip = '10.20.20.1'#instance.addresses['private'][0]['addr']
   url = 'http://10.20.20.1/html?doc=dddddddddddddddddddddddddddddddddddddddddd' #instance.get_vnc_console('novnc')['console']['url']
   instance_id = 'instance 1'
   if ip != '':
      return template('info_template', name=name, ip=ip, url=url,instance_id=instance_id)
   else:
      return template('error_template')
   

@post('/release')
def release():
  name = request.forms.get('name')
  instance_id = request.forms.get('instance_id')
  print "release the instance: ", instance_id
  success = 1 #teminate_instance()
  if success:
    return template('reserve_template',name=name)
  else:
    return tempalte('error_template')


@error(404)
def error404(error):
    return template('error_template', error=error)



#********Private Functions***********************

# create instance
def create_instance(image,time_span):
   print image,time_span
   #callnova(time_span)
   return "10.0.0.3"

# check the login information
def check_login(name,password):
  existed = 1 #check_user()
  if existed == 1:
     return 1
  else:
    return 0

# check whether the student has the instance or not
# name: student name
def check_instance(name):
   print name
   has_instance = name #TODO query_instance
   if has_instance == '1':
      return 1
   else:
      return 0

# instance_id: instance id
def terminate_instance(instance_id):
  print instance_id
  success = 1#TODO terminate instance
  return success

run(host='10.0.2.15', port=8080)
