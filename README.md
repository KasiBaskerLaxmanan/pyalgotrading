# Hands-on Algorithmic Trading with Python

![Powered by Jupyter Logo](https://cdn.oreillystatic.com/images/icons/powered_by_jupyter.png)

This repository has three Jupyter Notebooks and the associated Dockerfile that are the hands-on part for Deepak Kanungo's [_Learning Path: Hands-on Algorithmic Trading with Python_](https://learning.oreilly.com/learning-paths/-/9781492082613).

The Learning Path walks you through the process of developing a simple prototype of a trading algorithm. Please note that these notebooks assume a basic knowledge of Python and pandas. They are meant to show you how to apply Python programming to do financial data analysis and research. If you find any of the code confusing, I recommend that you read the following chapters before proceeding:


 Chapter 5. Data Analysis with pandas in Python for Finance, 2nd Edition, by Y. Hilpisch
 Chapter 6. Data Loading, Storage and File Formats and
 Chapter 7. Data Cleaning and Preparation, Python for Data Analysis, 2nd Edition, by W. McKinney


I have chosen the dual moving average crossover trading strategy to teach you some fundamental concepts, processes and tools of algorithmic trading. The following are brief descriptions of the notebooks.

1. Datasources: This notebook gives you an overview of some of the data sources you can use to download economic, fundamental, market and alternative types of data. Most of these data sources are free.

2. Processing Data: This notebook walks you through the process of importing, cleaning, analyzing, summarizing and visualizing data from Alpha Vantage with the objective of discovering quality trading signals.

3. Backtesting Algorithm: This notebook walks you through the process of backtesting your dual moving average crossover algorithm using vectorized backtesting.

These three notebooks will give a jump start in your efforts to do financial data analysis and research and help you in your efforts to create an algorithmic trading system.

## Running Jupyter Locally via Docker

This is a public repository so there is no need to create an account to download its contents. To download the source code from this page, click the 'Cloud' icon on the top right hand, above where the latest commit is detailed.

To download via git from your preferred terminal application, type:

```git clone https://resources.oreilly.com/learning-paths/hands-on-algorithmic-trading-with-python.git```

We've shared a Dockerfile, to make sure you can run all of these notebooks in your own time, on your own machine. This isn't required during the Learning Path, but can be useful for learning once the session is over.

You will need to have Docker installed on your system to create images and run containers. You can find the installation steps for all platforms on the company's [website](https://docs.docker.com/install/)
.

1) Clone the repository for the class either using the UI or your terminal (see above).

2) Once you have Docker installed, type the following on your terminal to create a Docker image: `docker build -t NAME .` (replace `NAME`, here and in next step, with what you want to call it. Note the period)

3) That will take a little while to create a Docker image, but once completed, you can run your server with the following:
`docker run -p 8888:8888 NAME`

4) Head to `localhost:8888` in your browser and you will be able to access the Jupyter Notebooks.
