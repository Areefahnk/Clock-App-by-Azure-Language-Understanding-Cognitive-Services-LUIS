@echo off

rem Set values for your Language Understanding app
set app_id=03bf6ecd-16d4-4cb1-8f05-2d54085a81f1
set endpoint=https://myluapp.cognitiveservices.azure.com/
set key=60e6f4a5f9f64b3a95114f46bf0e3d32

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"