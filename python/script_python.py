import os

location = "C:/Users/User/Documents/proyecto_parcial/dataset"

if not os.path.exists(location):
    os.mkdir(location)
else: 

    for root, dirs, files in os.walk(location, topdown=False):
        for name in files:
            os.remove(os.path.join(root,name))
        for name in dirs:
            os.rmdir(os.path.join(root,name))


from kaggle.api.kaggle_api_extended import KaggleApi

api = KaggleApi()
api.authenticate()

##print(api.dataset_list(search=''))


api.dataset_download_files('umerhaddii/imdb-summer-movies-data', path=location, force=True, quiet=False, unzip=True)
