FROM ghcr.io/actions/actions-runner:latest
RUN sudo apt update -y && sudo apt install build-essential git curl -y
RUN curl -fsSL --create-dirs -o ~/bin/yarn \
  https://github.com/yarnpkg/yarn/releases/download/v1.22.19/yarn-1.22.19.js && \
  chmod +x ~/bin/yarn

COPY .runner_exec.sh exec.sh
RUN chmod +x exec.sh

CMD [ "./exec.sh"]