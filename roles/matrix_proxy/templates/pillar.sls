---
makina-states.haproxy_registrations.matrix:
  - frontends:
      {{matrix_public_https_port}}:
        mode: https
        to_port: {{matrix_http_port}}
        http_fallback: false
        ssl_terminated: true
    hosts: {{matrix_hosts | to_json}}
    ip: "{{matrix_ip}}"
  - frontends:
      {{matrix_public_https_port}}:
        mode: https
        to_port: {{matrix_riot_port}}
        http_fallback: false
        ssl_terminated: true
    hosts: {{matrix_riot_hosts | to_json}}
    ip: "{{matrix_ip}}"
  - frontends:
      {{matrix_public_https_port}}:
        mode: https
        to_port: {{matrix_mxisd_port}}
        http_fallback: false
        ssl_terminated: true
    hosts: {{matrix_mxisd_hosts | to_json}}
    ip: "{{matrix_ip}}"
  - frontends:
      {{matrix_public_https_port}}:
        mode: https
        to_port: {{matrix_dimension_port}}
        http_fallback: false
        ssl_terminated: true
    hosts: {{matrix_dimension_hosts | to_json}}
    ip: "{{matrix_ip}}"
