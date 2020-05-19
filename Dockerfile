FROM jupyter/datascience-notebook:7a3e968dd212

#Set the working directory
WORKDIR /home/jovyan/

USER root
# Add files
COPY *.ipynb /home/jovyan/
COPY requirements.txt /home/jovyan/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Allow user to write to directory
RUN chown -R $NB_USER /home/jovyan \
    && chmod -R 774 /home/jovyan \
    && rm -fR /home/jovyan/work \ 
    && rm -f /home/jovyan/requirements.txt
USER $NB_USER

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True --NotebookApp.iopub_data_rate_limit=1.0e10
