
FROM python:3.8.2

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget curl git zsh \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="gentoo"/g' ~/.zshrc

WORKDIR /work

COPY requirements.txt /work

RUN pip install --requirement requirements.txt

EXPOSE 8000

CMD [ "zsh", "-l" ]
