# Practical Federated Learning (FL) Tutorial

This tutorial contains various codes used the tutorial titles ADVANCING FEDERATED LEARNING IN PRACTICE: FROM THEORY TO REAL-WORLD EDGE APPLICATIONS" which is held at the [IEEE International Conference on Machine Learning for Communication and Network](https://icdcs2025.icdcs.org/) (IEEE ICMLCN 2025) in 26 May 2025, Barcelona. You can find a published summary of the tutorial content in the conference proceedings.

# Part 1-1 - From Theory to Practice of FL

# Part 1-2 - Mechanism and Deployment Strategies for FL at the Edge
The materials for this part, including the [FLgame](https://github.com/Thea-Feng/FL-game/tree/e2063457e19263ef856d8cc8c63a4aab728f3037) code and presentation [slides](slides), are organized in the relevant folders of this repository and will be used during the tutorial.

# Part 2-1 - Robust FL for Intrusion Detection Systems (IDS)
This part's  materials, including the [Jupyter notebooks](notebooks), the [datasets](datasets) and the [presentations](slides), are in the relevant folders which will be used during the tutorial and is adopted from a previously delivered [tutorial in ICDCS 2024](https://github.com/leolavaur/icdcs_2025).

# Part 2-2 - Cross-Platform FL Implementation and Real-World Applications
The materials for this part, including the [FedKit](https://github.com/FedCampus/FedKit/tree/e203312add2c9fc1ebb5511bae8a52eb384814c4) code, [FedCampus](https://github.com/FedCampus/FedCampus_Flutter/tree/99859d0bcf340f7096684d8986706678eb7d8823) code and presentation [slides](slides) are organized in the relevant folders of this repository and will be used during the tutorial.

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

### [Bing Luo](https://luobing1008.github.io/)

Bing Luo is an Assistant Professor of Data and Computational Science at Duke Kunshan University. Before that, he was a joint Postdoctoral Research Fellow at The Chinese University of Hong Kong, Shenzhen, and Yale University. He received his Ph.D. degree from The University of Melbourne, Australia. Before pursuing his Ph.D., he gained several years of industry experience as a project manager at China Mobile Corporation Headquarter in Beijing. His research focuses on the theory and practice of federated learning and analytics, wireless communications and networking, game theory, and optimization. He has published 20 first-author papers in leading journals and conferences, including IEEE JSAC, IEEE TCOM, IEEE TMC, IEEE INFOCOM and IEEE ICDCS, and served as a PC Member in several conferences and workshops, including FL-NeurIPS, FL-ICML, FL-IJCAI, and FL-AAAI. He is a senior member of the IEEE.
Dr. Bing Luo has been in the cross-disciplinary research of federated learning and analytics, wireless communications and networking, and game-theoretical mechanism design for more than 10 years, including 4 years of telecom industry experience. He has been invited to deliver multiple talks and guest lectures on federated learning and related topics at various universities, including Yale University, Purdue University, and Imperial College London. Recently, he presented the launched FedCampus project at the prestigious Flower AI Summit 2024 (world largest Federated Learning conferences) in London, UK, and had an invited talk at the 60th Annual Allerton Conference 2024. He also co-organized an interdisciplinary workshop on economics and distributed systems at the 2024 IEEE ICDCS.

## Part1-2 Content Outline

**Mechanism design and deployment strategies for fL at the edge.**
Dr. Bing Luo will talk about how to achieve cost-effective FL deployment at network edge via flexible client sampling and incentive mechanism for randomized client participation. Specifically, he will present recent advanced client sampling strategies for minimizing the FL convergence time in edge networks by jointly considering system heterogeneity and statistical heterogeneity. He will then present a few game-theoretic incentive mechanisms for FL to deal with randomized client participation, which designs a customized pricing strategy to motivate different clients to join with different participation levels for achieving an unbiased and high-performance model.

## Part2-1 Content Outline

1. FL for collaborative security.
2. Security of FL architectures.
   
In this hands-on part, participants will be using [Flower](https://flower.ai/), an open-source framework for FL in Python, and an existing datasets for training an FL model for IDS task.

**FL for collaborative security.**
We will exmaine the application of FL to network security, and more specifically to the training of Collaborative Intrusion Detection Systems (CIDS) models.
The hands-on will consist of building a simple CIDS model using Flower and a dataset of network traffic, and experiment some of these challenges with toy examples.

**Security in collaborative FL.** 
Then, we will examine some challenges of deploying and running Federated Intrusion Detection Systems (FIDSs). Depending on the nature of the federation (public or private, trustworthiness of the participants, *etc.*), such systems can be vulnerable to various attacks. In particular, we will focus on poisoning attacks, where a participant tries to degrade the global model by sending malicious contributions, before discussing possible countermeasures. The hands-on will consist of simulating a poisoning attack on the CIDS model built in the previous part, and experimenting with strategies to detect and mitigate such attacks.

## Part2-2 Content Outline

**Cross-platform FL implementation and real-world applications.**
The tutorial will conclude by demonstrating a cross-platform FL implementation for Android and iOS, and a real-world mobile edge FL launch at university campus as shown below figure. Challenges and future directions will be discussed.

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

