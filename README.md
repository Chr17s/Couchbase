# 🚀 Arquitectura de Alta Disponibilidad y DR con Couchbase

Este repositorio contiene los scripts, archivos de configuración y consultas N1QL utilizadas para implementar un entorno de producción de base de datos NoSQL altamente disponible y tolerante a fallos.

## 📁 Estructura del Proyecto

* **/scripts:** Contiene `backup_couchbase.sh`, un script automatizado para la ejecución de respaldos incrementales/completos usando `cbbackupmgr`.
* **/config:** Archivos de configuración de infraestructura, incluyendo:
  * `prometheus.yml`: Configuración de scraping para el exportador de Couchbase.
  * `haproxy.cfg`: Plantilla de configuración del balanceador de carga para enrutamiento Round-Robin.
* **/consultas:** Comandos operativos y de inyección de datos (N1QL).

## 🛠️ Tecnologías Utilizadas
* **Base de Datos:** Couchbase Server Enterprise 7.x (NoSQL)
* **Balanceo de Carga:** HAProxy
* **Monitoreo y Alertas:** Prometheus + Grafana
* **Sistema Operativo:** Ubuntu 22.04 LTS (Oracle Cloud Infrastructure)

## 📌 RTO y RPO Alcanzados
* **RTO (Recovery Time Objective):** < 30 segundos (vía Auto-Failover nativo).
* **RPO (Recovery Point Objective):** Cero pérdida en memoria (réplicas sincronizadas a nivel bucket) y recuperación Point-in-Time mediante repositorios de *Disaster Recovery*.
