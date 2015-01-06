FROM    coshx/dockerbdd_app:5532cbd
ADD     . /app
RUN     bundle install
CMD     startup.sh

