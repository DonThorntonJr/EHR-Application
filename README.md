# EHR-Application

EHR-Application application runs on a straight forward stack, PHP based web pages, redis cache server, MySQL database.

SaaS company wants to host their new cloud based EHR.

The application runs on a straight forward stack, PHP based web pages, redis cache server, MySQL database.

They want high availability.

App does not support multi-tenant, will need one app server for each of their customers, but they can use the same database.

They expect 5 customers this year, growing by 5-10 more customers per year.

tree:
.
├── EHR_VPC
│   ├── aws_internet_gateway.tf
│   ├── aws_route.tf
│   ├── aws_subnet.tf
│   ├── aws_vpc.tf
│   ├── EHR_APP
│   │   ├── aws_elasticache_cluster.tf
│   │   └── EHR_CUST-001
│   │       └── aws_elastic_beanstalk_application.tf
│   └── EHR_RDS
│       ├── aws_db_instance.tf
│       └── aws_rds_cluster.tf
├── LICENSE
└── README.md

4 directories, 10 files
