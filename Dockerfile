FROM python:3.8-slim

# Cria um usuário app_user para não usar o container como roote
# Seta o bash como shell default
RUN useradd --create-home --shell /bin/bash app_user

# Troca o diretório de trabalho
WORKDIR /home/app_user

# Copia os requirements caso exista e faz a instalação
# COPY requirements.txt ./
# a opção no-cache ajuda a reduzir o tamanho da imagem
# RUN pip install --no-cache-dir -r requirements.txt

# trocar o usuário para o usuário criado
USER app_user

# copiar o código da aplicação para o diretório de trabalho do Docker
COPY . .

# Chamar o bash
CMD ["bash"]