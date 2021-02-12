import requests

city_id = 598316
api_key = "dfe420ea7207942af890db1b61c6c0f5"

# get the json data
weather_data = requests.get(
        f"http://api.openweathermap.org/data/2.5/weather?id={city_id}&appid={api_key}&units=metric"
    ).json()

# why the fuck is weather a list??
condition = weather_data["weather"][0]["main"]
temperature = weather_data["main"]["temp"]

print(f"{condition}, {temperature} °C")