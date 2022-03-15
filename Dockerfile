FROM node:latest

WORKDIR /usr/app

RUN npm install -g grunt-cli \
    && npm install -g brunch \
    && npm install -g bower \
    && npm install -g create-react-native-app \
    && npm install react-native-cli \
    && npm install -g yarn

CMD ["/bin/bash"]
