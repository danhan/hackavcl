'''
Access api to the database model.
'''
import time
from elixir import metadata, setup_all, session
from sqlalchemy import desc
#from model import Collection, Status, Item, 
from model import Student, Reservation, Class, Image, ImageType, Flavor 

def init_db(db):
    ''' Initializes the database.'''
    print "binding db.."
    metadata.bind = db
    # from: http://stackoverflow.com/questions/7004169/why-does-elixir-sqlalchemys-session-bind-get-set-to-none-within-threads
    #session.configure(bind=metadata.bind)
    #metadata.bind.echo = True
    setup_all()
