{{#if bind.cinc-server-ctl}}
  {{~ #eachAlive bind.cinc-server-ctl.members as |member|}}
    {{~ #if @last}}
OcId::Application.config.secret_key_base = "{{member.cfg.secrets.oc_id.secret_key_base}}"
    {{~ /if}}
  {{~ /eachAlive}}
{{else}}
OcId::Application.config.secret_key_base = "{{cfg.secret_key_base}}"
{{/if}}
