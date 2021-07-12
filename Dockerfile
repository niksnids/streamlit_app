FROM python:3.7
COPY . /streamlit_app
WORKDIR /streamlit_app
RUN pip install -r requirements.txt
RUN python -m textblob.download_corpora
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]