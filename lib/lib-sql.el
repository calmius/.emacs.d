(use-package sql
  ;; :defer t
  :custom
  (sql-sqlite-options '("-header" "-box"))
  :init
  (setq sql-postgres-login-params '((user :default "postgres")
                                    (database :default "test")
                                    (server :default "localhost")
                                    (port :default 5432))))

(provide 'lib-sql)
