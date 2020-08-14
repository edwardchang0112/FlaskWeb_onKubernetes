FROM python:3.7
WORKDIR /app
COPY . /app
COPY requirements.txt /app
RUN pip install -r ./requirements.txt
COPY popupshop_flusk_web.py /app
COPY get_mssql_data_api.py /app
COPY load_input_mssql_data.py /app
COPY OpenWeatherAPI.py /app
COPY user_DB.py /app
COPY user_info.py /app
# COPY KEY.pem /app #if your project is AWS related
COPY ./templates/ /app
COPY ./videos/ /app
COPY user.db /app
COPY XGBmodel_Hyd.model /app
COPY XGBmodel_Oxy.model /app
CMD ["python", "popupshop_flusk_web.py.py"]