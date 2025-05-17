# Federated Learning for Intrusion Detection Systems

This is a practical example which is delivered as part of the practical component for the tutorial titled "ADVANCING FEDERATED LEARNING IN PRACTICE: FROM THEORY TO REAL-WORLD EDGE APPLICATIONS" which is held at the [IEEE International Conference on Machine Learning for Communication and Network](https://icdcs2025.icdcs.org/) (IEEE ICMLCN 2025) in May 2025.
This repository contains the materials, including the Jupyter notebooks and the presentations support, that have been used during the tutorial and is adopted from a previously delivered [tutorial in ICDCS 2024](https://github.com/leolavaur/icdcs_2025).

You can find a published summary of the tutorial content in the conference proceedings.


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

## Tutorial content

1. Fundamentals of FL,
2. FL for collaborative security,
3. security of FL architectures.

**Fundamentals of FL.** 
The first lecture introduces the audience to the core principles of FL with examples of applications.
In the hands-on, participants will be introduced to [Flower](https://flower.ai/), an open-source framework for FL in Python, and to existing datasets for FL.
The goal is to lay down the foundations for the rest of the tutorial.

**FL for collaborative security.**
The second lecture will focus on the application of FL to network security, and more specifically to the training of Collaborative Intrusion Detection Systems (CIDS) models.
This part will focus on the challenges raised by the heterogeneity of the clients' environments, and how to address them.
The hands-on will consist of building a simple CIDS model using Flower and a dataset of network traffic, and experiment some of these challenges with toy examples.

**Security in collaborative FL.** 
The last lecture will address some challenges of deploying and running Federated Intrusion Detection Systems (FIDSs).
Depending on the nature of the federation (public or private, trustworthiness of the participants, *etc.*), such systems can be vulnerable to various attacks.
In particular, we will focus on poisoning attacks, where a participant tries to degrade the global model by sending malicious contributions, before discussing possible countermeasures.
The hands-on will consist of simulating a poisoning attack on the CIDS model built in the previous part, and experimenting with strategies to detect and mitigate such attacks.


## Materials

### Installation

The project uses [Poetry](https://python-poetry.org) for Python dependencies management, and [Nix](https://nixos.org) for system dependencies management.

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


