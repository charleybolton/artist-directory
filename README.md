## 🚧 Work In Progress

This project is a solo portfolio build, still in active development.  
It’s part of my goal to learn, apply, and showcase real-world data engineering skills — including infrastructure, automation, testing, and cloud architecture.

---

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

The Artist Directory is a data-driven platform built to increase visibility and opportunities for underrepresented artists in electronic music.

Using Python and AWS, the project enables DJs and producers from marginalised communities (e.g. POC, queer, LGBTQ+, trans, non-binary, disabled) to submit their information and optionally connect streaming accounts. Promoters can then search the database by genre, location, and interest in specific events. Artist momentum (e.g. growth in followers or plays) is also tracked to help surface emerging talent.

---

## Project Description

This repository contains a full ETL pipeline and supporting infrastructure that powers the platform.

Core features include:
🔸 Self-submission form for artists to input their details  
🔸 Optional OAuth integrations with SoundCloud and Spotify for richer metadata  
🔸 Promoters can search artists by location, genre, and event interests  
🔸 Momentum tracking and alerts to highlight rising talent using play/follower trends

The project currently excludes Instagram integration, which may be reconsidered later.

All infrastructure is built using [Terraform](https://www.hashicorp.com/en/products/terraform), with core logic written in [Python](https://www.python.org). The system leverages AWS services such as Lambda (serverless compute), S3 (data storage), API Gateway (submission and OAuth endpoints), SNS (email alerts), and CloudWatch (monitoring and logs). The project follows best practices for testing, automation, security, and scalable deployment.

Future plans include frontend interfaces and user roles refinement.

---

## Requirements

| Tool | Purpose |
|------|---------|
| Python 3.11+ | Core runtime |
| [`uv`](https://docs.astral.sh/uv/) | Dependency & virtual‑env manager |
| [Terraform](https://developer.hashicorp.com/terraform/install) | Infrastructure‑as‑Code |
| [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) | Local AWS access |
| `.env` file | Secrets & config (bucket names, API keys, etc.) |

---

## Tech Stack

**Languages & Core Tools**  
- Python 3.11+  
- Terraform  
- Bash / Make  

**Python Dependencies**  
- `boto3` – AWS SDK  
- `pandas` – Data wrangling  
- `pyarrow` – Parquet support  
- `pydantic` – Data validation  
- `requests` – API / OAuth  

**Dev & Testing**  
- `pytest` – Unit & integration tests  
- `moto` – Mock AWS services  
- `ruff` – Lint & format  
- `bandit` – Security scan  
- `uv` – Env & script runner  

**AWS Services (via Terraform)**  
- Lambda – Serverless compute  
- S3 – Data storage  
- API Gateway – Endpoints & callbacks  
- CloudWatch – Logs & metrics  
- SNS – Email notifications  
- *(Planned)* Step Functions – Orchestrated ETL

---

✍️ _The rest of this README (installation, Makefile usage, deployment notes, etc.) will be added as development continues._

_This is an active work in progress — feel free to check back or follow updates in the repo._