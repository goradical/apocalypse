INSERT INTO `oauth_client_details`(`id`, `client_name`, `description`, `client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `auto_approve`, `is_deleted`, `create_identity_id`, `update_identity_id`, `create_account_id`, `update_account_id`, `create_time`, `update_time`) VALUES (12341234, 'IDaaS 登录', 'IDaaS 登录演示', 'idaas', '[\"idaas\"]', '$2a$10$zlw02OjZnz7yAeSjsnaAIui0h0dc1X7hW/3hLBb9QxI2a71SSpo/u', '[\"me\"]', '[\"authorization_code\"]', 'http://localhost:33001/call/login/oauth2/code/idaas', '[\"ROLE_CLIENT\"]', 86400, 2592000, '{}', '[\"me\"]', 0, 0, 0, 0, 0, '2020-10-23 15:10:22', '2020-10-23 15:10:22');