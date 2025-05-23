# Practical Federated Learning (FL) Tutorial

This tutorial contains various codes used the tutorial titles ADVANCING FEDERATED LEARNING IN PRACTICE: FROM THEORY TO REAL-WORLD EDGE APPLICATIONS" which is held at the [IEEE International Conference on Machine Learning for Communication and Network](https://icdcs2025.icdcs.org/) (IEEE ICMLCN 2025) in 26 May 2025, Barcelona. You can find a published summary of the tutorial content in the conference proceedings.

# Part 1 - From Theory to Practice of FL

# Part 2 - Real-world Case Studies (FedCampus and FLGame)

# PART 3 - Robust FL for Intrusion Detection Systems (IDS)
This part's  materials, including the [Jupyter notebooks](notebooks), the [datasets](datasets) and the [presentations](slides), are in the relevant folders which will be used during the tutorial and is adopted from a previously delivered [tutorial in ICDCS 2024](https://github.com/leolavaur/icdcs_2025).

## Abstract

Federated Learning (FL) is a Machine Learning paradigm that enables training models across distributed clients without accessing their data.
In the context of network security, FL can be used to collaboratively train Intrusion Detection System (IDS) models across multiple organizations, virtually extending the local dataset of each participant. Among the new challenges raised by this approach, the heterogeneity of the clients’ environments induce consequent differences in the data distributions, and therefore contributions.
Further, identifying and mitigating malicious contributions is made more complex in heterogeneous environments.

This tutorial introduces the audience to the principles of FL and its application to network security, and more specifically to build Collaborative Intrusion Detection Systems (CIDSs) using FL.
We address open challenges on that regard, before focusing on the problem of training on heterogeneous data.
Finally, we discuss the issues raised by using FL in the context of network security, with a particular focus on poisoning attacks.


## Conveyer 

### [Ahmed M. A. Sayed](https://eecs.qmul.ac.uk/~ahmed/)

Ahmed M. A. Sayed is an Associate Professor at the Queen Mary University of London, UK. He received his PhD in Computer Science and Engineering from the Hong Kong University of Science and Technology, HK in 2017. Formerly, he was a research scientist at KAUST, Saudi Arabia, and a senior researcher at Huawei's Future Networks Lab, HK. He is an investigator on projects totaling USD ~1.5mil in funding. His current research focus involves designing and prototyping Networked and Distributed Systems of the Future; in particular, he is interested in developing methods and techniques to improve and enhance the performance of networked and distributed systems. His current focus is on developing scalable and efficient systems supporting distributed machine Learning (esp., distributed privacy-preserving machine learning, aka. Federated Learning). His work appears in top-tier conferences and journals, including NeurIPS, AAAI, MLSys, ACM EuroSys, IEEE INFOCOM & ICDCS, IEEE/ACM ToN, IEEE IoTJ, IEEE TFIS, IEEE TCC, IEEE TBD Elsevier Computer Networks, Elsevier FGCS, Elsevier Internet of Things.

## Part3 Content Outline

1. FL for collaborative security.
2. Security of FL architectures.
   
In this hands-on part, participants will be using [Flower](https://flower.ai/), an open-source framework for FL in Python, and an existing datasets for training an FL model for IDS task.

**FL for collaborative security.**
We will exmaine the application of FL to network security, and more specifically to the training of Collaborative Intrusion Detection Systems (CIDS) models.
The hands-on will consist of building a simple CIDS model using Flower and a dataset of network traffic, and experiment some of these challenges with toy examples.

**Security in collaborative FL.** 
Then, we will examine some challenges of deploying and running Federated Intrusion Detection Systems (FIDSs). Depending on the nature of the federation (public or private, trustworthiness of the participants, *etc.*), such systems can be vulnerable to various attacks. In particular, we will focus on poisoning attacks, where a participant tries to degrade the global model by sending malicious contributions, before discussing possible countermeasures. The hands-on will consist of simulating a poisoning attack on the CIDS model built in the previous part, and experimenting with strategies to detect and mitigate such attacks.


## Materials

The tutorial notebook can run on Google Colab, however, if you prefer to have a standalone setup, please use the below tools.  
### Installation

To have standalone setup, this part uses [Poetry](https://python-poetry.org) for Python dependencies management, and [Nix](https://nixos.org) for system dependencies management.

If you are a Nix user, the easiest way to install the dependencies is to use the provided `flake.nix` file, which will create a virtual environment with all the necessary dependencies, including the Python ones.
To do so, simply run the following command from anywhere inside the repository, and open the Jupyter notebooks from the generated shell session.
```bash
nix develop
```

If you are not a Nix user, you can still use Poetry to install the Python dependencies.
To do so, run the following command at the root of the respository.
```bash
poetry install
```
You can then use the genserated virtual environment to run the notebooks.
If not, you can open a shell session using `poetry shell` and run `jupyter notebook` from there.

