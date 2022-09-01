FROM python:3.8
# creates and sets working directory /demo if not exists
WORKDIR /demo
#copy only requirements.txt file to /demo bcoz if we copy whole data from PWD to demo
#it use cache and no need to install softwares if installed already in requirements file 
COPY requirements.txt .
# install all dependencies reuied for jango project mentioned in requirements.txt file
RUN pip install -r requirements.txt
# Now here we copy only data to /demo so that it will reduce the image 
# creation time as we already installed packaes in requirement file 
COPY . .

EXPOSE 8000

# manage.py is master file to run Django app . here runserver is to run locally and 0:8000 to access app outside from container
CMD python demoapp/manage.py runserver 0:8000