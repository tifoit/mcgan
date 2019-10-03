McGANs
=====================================

Code for reproducing experiments in ["McGAN"](https://doi.org/10.1145/19.nn).


## 1. Prerequisites

- Python, NumPy, TensorFlow, SciPy, Matplotlib
- A recent NVIDIA GPU 
- Tested on Nvidia Titan X GPU with CUDA 9.0, with Anaconda Python 3.6+

## 2. Instructions on running the code on your machine

### 2.1 Set up the code and environment

1. Clone this repository
2. `cd` to the root directory of the project (the folder containing the `README.md`)
3. Install dependencies by running `pip install -r requirements.txt` in terminal.  You can use virtual environment in order not to modify your current python environment.

### 2.2 Use the trained model on your machine

1. Manually download the pre-trained McGAN model (provided by Nvidia), the trained feature extractor network, and the discovered feature axis from the link
2. Decompress the downloaded files and put it in project directory as the following format

    ```text
    root(d):
      asset_model(d):
        karras2019-celebahq-1024x1024.pkl   # pretrained GAN from Nvidia
        cnn_face_attr_celeba(d):
          model_20180107_0328473.h5         # trained feature extractor network
    ```

3. Run the interactive demo by first enter interactive python shell from terminal (make sure you are at the project root directory), and then run the commands in python
    ```python
    exec(open('./script/interactive.py').read())
    ```
    
    Alternatively, you can run the interactive demo from the Jupyter Notebook at `./src/notebooks/tl_gan_ipywidgets_gui.ipynb`
    
    
4. A interactive GUI interface will pop up and play with the model

### 2.3 Instructions on training the model on your own

1. Download celebA dataset `python ./src/ingestion/process_celeba.py celebA`
2. to be continued...

## 3. Project structure

- **src** : Put all source code for production within structured directory
- **datasets** : Include example a small amount of data in the Github repository so tests can be run to validate installatio
- **jar** : Any libs or content to include in the README or web framework if part of the pipeline
- to be continueed

