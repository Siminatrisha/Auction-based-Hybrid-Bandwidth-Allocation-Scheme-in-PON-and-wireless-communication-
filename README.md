# Auction based Hybrid Bandwidth Allocation Scheme in combined of Optical Fiber and Wireless Communication Technology

## Introduction
High-capacity networks are crucial for handling the increasing data volumes from internet users and bandwidth-intensive applications. Optical fiber, like EPON, offers cost-effective last-mile connectivity, managing data traffic, while WiMAX caters to the bandwidth needs of users. Both networks face fluctuating bandwidth demands, necessitating dynamic adjustments for individual subscribers. Access networks must ensure quality service for a large user base and meet evolving communication standards like 5G. To tackle these challenges, a statistical hybrid bandwidth allocation scheme has been proposed.

## Overview
This work proposes an Auction-based Dynamic Bandwidth Allocation (DBA) algorithm that utilizes EPON and WiMAX technologies to meet the 5 GB standard. The Optical Line Terminal (OLT) oversees the auction process, responding to Optical Network Unit (ONU) requests for additional bandwidth. The algorithm repeats the auction cycle every four time cycles and employs a hybrid of dynamic and semi-dynamic bandwidth allocation schemes, coupled with traffic prediction from historical data patterns.

## Key Features
- **Bandwidth Management**: Predicts heavily loaded ONUs using a machine learning (ML) algorithm, specifically Support Vector Machines (SVM).
- **Dynamic Adjustments**: Reorders heavily loaded ONUs to reduce the gap between the total granted window size and the total requested window size.
- **Auction Process**: The OLT identifies heavily and lightly loaded ONUs, calculates granted windows for all ONUs, and publishes lists of both types.
- **Quality of Service**: Ensures better throughput, reduces consumed time, and improves overall quality of service by prioritizing bandwidth allocation to heavily loaded ONUs.

## Implementation Details
The algorithm begins by predicting heavily loaded ONUs using SVM, classifying and predicting based on input features. ONUs with reported window sizes exceeding the maximum window size calculated from PON system parameters are identified and reordered. During the auction process:
- The OLT calculates the granted windows for all ONUs.
- Heavily loaded ONUs are awarded available bandwidth on a priority basis.
- Remaining window sizes for lightly loaded ONUs are calculated at the end of each auction cycle.

## Benefits
- **Improved Throughput**: Allocates bandwidth efficiently to ensure higher data transmission rates.
- **Time Efficiency**: Reduces the time consumed in bandwidth allocation processes.
- **Enhanced Quality of Service**: Maintains high-quality service levels for users by dynamically adjusting bandwidth based on real-time needs and predictions.

## Technologies Used
- **EPON (Ethernet Passive Optical Network)**
- **WiMAX (Worldwide Interoperability for Microwave Access)**
- **Machine Learning (Support Vector Machines - SVM)**
- **Traffic Prediction Algorithms**

