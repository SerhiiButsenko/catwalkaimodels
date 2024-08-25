pip install requests
pip install tqdm
apt update
apt install software-properties-common --yes
apt install git-lfs --yes
git lfs install

git clone https://github.com/FurkanGozukara/IDM-VTON
cd IDM-VTON

#rm -r app_VTON.py
#wget https://raw.githubusercontent.com/FurkanGozukara/Stable-Diffusion/main/CustomPythonScripts/app_VTON.py

python -m venv venv

source ./venv/bin/activate

pip install -r requirements.txt
pip install torch==2.2.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --upgrade
pip install xformers==0.0.24
pip install bitsandbytes==0.43.0 --upgrade
pip install gradio
pip install huggingface_hub