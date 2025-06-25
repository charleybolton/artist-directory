# Artist-Directory
MVP backend ETL pipeline + infrastructure-as-code for a promoter-accessible artist directory

## Table of Contents
1. [Introduction](#introduction)  
2. [Project Description](#project-description)  
3. [Requirements](#requirements)  
4. [Installation Instructions](#installation-instructions)  
5. [Running Python Scripts Locally](#running-python-scripts-locally)  
6. [Makefile Commands](#makefile-commands)  

---

## Introduction

The Artist Discovery & Equity Directory is a data-driven platform built to increase visibility and opportunities for underrepresented artists in electronic music.

Using Python and AWS, the project enables DJs and producers from marginalised communities (e.g. POC, queer, LGBTQ+, trans, non-binary, disabled) to submit their information and optionally connect streaming accounts. Promoters can then search the database by genre, location, and interest in specific events. Artist momentum (e.g. growth in followers or plays) is also tracked to help surface emerging talent.

---

## Project Description

This repository contains a full ETL pipeline and supporting infrastructure that powers the platform.

Core features include:
🔸 Self-submission form for artists to input their details
🔸 Optional OAuth integrations with SoundCloud and Spotify for richer metadata
🔸 Searchable promoter access to discover artists based on location and interest
🔸 Momentum tracking and alerts to highlight rising talent using play/follower trends

All infrastructure is built using [Terraform](https://www.hashicorp.com/en/products/terraform), with core logic written in [Python](https://www.python.org). The system leverages AWS services such as Lambda (for serverless compute), S3 (for data storage), API Gateway (for handling submissions and OAuth callbacks), SNS (for email alerts), and CloudWatch (for monitoring and logging). The project follows best practices for testing, automation, security, and scalable deployment.

---

