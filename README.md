# ELK Stack Project

This project is designed to set up an Elasticsearch, Logstash, and Kibana (ELK) stack using Docker.

## Requirements

- Docker and Docker Compose must be installed.

## Installation

1. The `docker-compose.yml` file contains information about the main features of the project:

   - **Elasticsearch**: 
     - Image: `docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}`
     - Port: `9200`
     - Configured with security and memory parameters.

   - **Logstash**:
     - Image: `docker.elastic.co/logstash/logstash:${ELASTIC_VERSION}`
     - Ports: `5044`, `5000`
     - Configured using the `logstash/logstash.conf` file.

   - **Kibana**:
     - Image: `docker.elastic.co/kibana/kibana:${ELASTIC_VERSION}`
     - Port: `5601`

2. Start the containers using Docker Compose:
   ```bash
   docker-compose up -d
   ```

## Usage

- **Kibana**: Go to `http://localhost:5601` in your browser to access the management panel.
- **Logstash**: Optimally processes logs using filtering rules specified in the configuration file.

## Important Files

- `.env`: Elasticsearch version is specified (`ELASTIC_VERSION=7.17.9`).
- `docker-compose.yml`: Docker Compose configuration.
- `logstash/logstash.conf`: Logstash input and filtering rules file.
- `docker/elasticsearch/elasticsearch-entrypoint.sh`: Contains the Elasticsearch setup process.

## Contributing

Every change should be annotated in the relevant section.

## License

This project is available under the MIT license.

