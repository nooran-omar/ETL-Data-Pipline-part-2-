SELECT * FROM public.weather
SELECT 
    weather_main,
    COUNT(*) as count
FROM public.weather
GROUP BY weather_main
ORDER BY count DESC;
SELECT 
    AVG(temp) as avg_temperature,
    AVG(humidity) as avg_humidity,
    AVG(pressure) as avg_pressure
FROM public.weather;
SELECT 
    MAX(temp) as max_temp,
    MIN(temp) as min_temp,
    MAX(humidity) as max_humidity,
    MIN(humidity) as min_humidity
FROM public.weather;
SELECT 
    date_time,
    temp,
    humidity,
    weather_main,
    weather_description
FROM public.weather
ORDER BY date_time DESC
LIMIT 10;
SELECT 
    weather_main,
    AVG(temp) as avg_temp,
    COUNT(*) as occurrences
FROM public.weather
GROUP BY weather_main
ORDER BY avg_temp DESC;
SELECT 
    date_time,
    temp,
    humidity,
    rain_volume
FROM public.weather
WHERE weather_main = 'Rain'
ORDER BY date_time;