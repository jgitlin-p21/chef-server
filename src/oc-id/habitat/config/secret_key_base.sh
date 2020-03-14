{{#if bind.cinc-server-ctl}}
  {{~ #eachAlive bind.cinc-server-ctl.members as |member|}}
    {{~ #if @last}}
export SECRET_KEY_BASE="{{member.cfg.secrets.oc_id.secret_key_base}}"
    {{~ /if}}
  {{~ /eachAlive}}
{{else}}
export SECRET_KEY_BASE="{{cfg.secret_key_base}}"
{{/if}}
