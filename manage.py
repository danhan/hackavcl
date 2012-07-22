import sys
from bottle import *
from elixir import *
from model import *
from modelapi import *

DATABASE = "postgres://hackavcl:hackavclpw@localhost/hackavcl"
init_db(DATABASE)

def reset():
    ''' Reset database and recreates tables. '''
    #cleanup_all(drop_tables=True)
    drop_all()
    init()

def init():
    ''' Creates initial statuses '''
    create_all()
    ImageType(name='windows')
    ImageType(name='linux')
    Flavor(os_id=1)
    session.commit()

def add_student(name,email):
    Student(name=name, email=email)
    session.commit()

def add_image(name,os_image_id, flavor,type):
    Image(name=name, os_image_id=os_image_id, flavor=flavor,type=type)
    session.commit()

def add_flavor(os_id):
    Flavor(os_id=os_id)
    session.commit()

def add_class(name,image=""):
    Class(name=name)
    session.commit()

def load_test_data():
    add_student("curtis", "c.collicutt@gmail.com")
    add_student("dan", "dhan3@ualberta.ca")
    #add_flavor(os_id=1)
    f = Flavor.query.filter_by(os_id=1).one()
    t = ImageType.query.filter_by(name='linux').one()
    add_image(name="matlab", os_image_id="deb18ef1-ee5a-4cf7-852b-d4f37a2e1ace", flavor=f, type=t)
    add_class("Math 101")

def runserver():
    ''' Starts development server. '''
    # Turn on debug somehow
    debug(True)

    # Reloader
    run(app, host='localhost', port=8080, reloader=True)

if __name__ == '__main__':
    if len(sys.argv) == 2:
        if sys.argv[1] == 'reset':
            reset()
        if sys.argv[1] == 'init':
            init()
        if sys.argv[1] == 'runserver':
            runserver()
        if sys.argv[1] == 'loadtestdata':
            load_test_data()
    if len(sys.argv) == 4:
	if sys.argv[1] == 'addstudent':
	    add_student(sys.argv[2], sys.argv[3])
	if sys.argv[1] == 'addimage':
	    add_image(sys.argv[2], sys.argv[3])
