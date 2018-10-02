FROM node:8.11.4

# Install Cypress dependencies
# RUN apt-get update && \
#   apt-get install -y \
#     libgtk2.0-0 \
#     libnotify-dev \
#     libgconf-2-4 \
#     libnss3 \
#     libxss1 \
#     libasound2 \
#     xvfb
# 
# # Change current time zone to Europe/Helsinki Time zone
# RUN date && \
#     cp -f /usr/share/zoneinfo/Europe/Helsinki /etc/localtime && \
#     date

# Install latest yarn and source it
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.9.4

# Versions of local tools
RUN node -v
RUN npm -v
RUN . $HOME/.bashrc yarn -v && yarn global add puppeteer;
ENV PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
