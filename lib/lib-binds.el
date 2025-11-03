(defun add_user ()
  "Add ansible user."
  (interactive)
  (shell-command "ansible-playbook /etc/ansible/playbooks/add_user_rodimenko.yml"))

;; (global-set-key (kbd "C-x :") 'ls); Or whatever key you want...

(provide 'lib-binds)
