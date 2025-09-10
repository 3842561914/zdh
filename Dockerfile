# 使用官方的 Python 基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /app

# 将当前目录下的所有文件复制到工作目录
COPY . /app

# 安装依赖
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# 运行应用
CMD ["python", "app.py"]
