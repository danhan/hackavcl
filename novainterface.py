import re,glob,operator,string,sys
import novaclient
from novaclient.v1_1 import client
import scheduler
from scheduler import create_instance
import os

def callnova(name, password,reservation_length):
	
	ip_address = create_instance(reservation_length)
	usrinfo = str(name)+'.'+ip_address+'.info'
	cmd0 = 'echo Reservation Legnth : '+ str(reservation_length) + '> userinfo'
	os.system(cmd0)

	return ip_addresse
