FROM jupyter/minimal-notebook:ubuntu-18.04

USER $NB_UID
RUN conda install mamba -y --quiet -c conda-forge 
RUN mamba install -y  -c onedata protobuf=3.13 fs.onedatafs && conda clean --all

# install root via mamba        
RUN mamba install -y --quiet \
	root \			
    && conda clean --all
    
# packages not in conda
RUN pip install --no-cache-dir \
        uproot \
        uproot3 \
        awkward \
        pandas \
        numpy \
        matplotlib \
        lmfit \
        scikit-learn \
        vector \
        tflearn   

RUN rmdir work
