(require 'package)
(setq package-enable-at-startup nil)

;;; remove SC if you are not using sunrise commander and org if you like outdated packages
(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-esh-contents)
  (package-install 'use-package))

;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(setq fill-column 70)
(auto-fill-mode 1)

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-rouge))
 '(custom-safe-themes
   '("7c28419e963b04bf7ad14f3d8f6655c078de75e4944843ef9522dbecfcd8717d" "c8b3d9364302b16318e0f231981e94cbe4806cb5cde5732c3e5c3e05e1472434" "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641" "c5878086e65614424a84ad5c758b07e9edcf4c513e08a1c5b1533f313d1b17f1" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "1f292969fc19ba45fbc6542ed54e58ab5ad3dbe41b70d8cb2d1f85c22d07e518" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "32f22d075269daabc5e661299ca9a08716aa8cda7e85310b9625c434041916af" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "6f96a9ece5fdd0d3e04daea6aa63e13be26b48717820aa7b5889c602764cf23a" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "6e33d3dd48bc8ed38fd501e84067d3c74dfabbfc6d345a92e24f39473096da3f" "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8" "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c" "10e5d4cc0f67ed5cafac0f4252093d2119ee8b8cb449e7053273453c1a1eb7cc" "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66" "350fef8767e45b0f81dd54c986ee6854857f27067bac88d2b1c2a6fa7fecb522" "571661a9d205cb32dfed5566019ad54f5bb3415d2d88f7ea1d00c7c794e70a36" "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" "d481904809c509641a1a1f1b1eb80b94c58c210145effc2631c1a7f2e4a2fdf4" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "81f53ee9ddd3f8559f94c127c9327d578e264c574cda7c6d9daddaec226f87bb" "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100" "77fff78cc13a2ff41ad0a8ba2f09e8efd3c7e16be20725606c095f9a19c24d3d" "9f297216c88ca3f47e5f10f8bd884ab24ac5bc9d884f0f23589b0a46a608fe14" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f" "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2" "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874" "e8ceeba381ba723b59a9abc4961f41583112fc7dc0e886d9fc36fa1dc37b4079" "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" "2b501400e19b1dd09d8b3708cefcb5227fda580754051a24e8abf3aff0601f87" "3c08da65265d80a7c8fc99fe51df3697d0fa6786a58a477a1b22887b4f116f62" "7758a8b8912ef92e8950a4df461a4d510484b11df0d7195a8a3d003965127abc" "c8c4baac2988652a760554e0e7ce11a0fe0f8468736be2b79355c9d9cc14b751" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "2b20b4633721cc23869499012a69894293d49e147feeb833663fdc968f240873" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290" "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd" "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0" "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" "a6920ee8b55c441ada9a19a44e9048be3bfb1338d06fc41bce3819ac22e4b5a1" "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392" "9d5124bef86c2348d7d4774ca384ae7b6027ff7f6eb3c401378e298ce605f83a" "b754d3a03c34cfba9ad7991380d26984ebd0761925773530e24d8dd8b6894738" "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176" "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad" "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "6f1f6a1a3cff62cc860ad6e787151b9b8599f4471d40ed746ea2819fcd184e1a" "e14884c30d875c64f6a9cdd68fe87ef94385550cab4890182197b95d53a7cf40" "38c0c668d8ac3841cb9608522ca116067177c92feeabc6f002a27249976d7434" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "30d174000ea9cbddecd6cc695943afb7dba66b302a14f9db5dd65074e70cc744" "e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554" "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b" "d6b934330450d9de1112cbb7617eaf929244d192c4ffb1b9e6b63ad574784aad" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "b3406250e07be8929eab0c220a566f8b3fd5939ddd2a24c94e0d11e09c8f3c1b" "2fbee42afd6aba2cd40d876732a92f9659f4e6aadbcb4cb66422ef10d8a03e67" "90782f08a83d2ea7f18df1560d62f8f71fc66ae777e9928653ce897cfa920e5f" "31a685fb6526bec211c4eeee7875efcabfb68d7ff856d2676f444f15fb6edb79" "64b47ccd55587f89eced5e55c1b9d2b5878f986286ee24824d12a9403187bcc0" "73ab4336b69205ba30ab2cdbe7b7ed6e626763db340c17bd1d32f6ff7c2ed2ce" "a20493c5f24ed6ea8044469dd3945be5d0dbe635793ffd6b30ef68c5a75bea95" "1d83bc0d234be1674701e5bd7bf18b447fe727ecdabf634053c69e2a1c7baf15" "b858104528533d8cc0e6a74c669f21055bab2cc93bfbfcccce162de7e8e42323" "28e2979093b9f28d6899b93edc1b03a7e3d6cc1c49df1bbee6fa48933890eeeb" default))
 '(default
   ((t
     (:inherit nil :extend nil :stipple nil :background "#212121" :foreground "#FFFFFF" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "ADBO" :family "Iosevka Curly"))))
 '(display-fill-column-indicator nil)
 '(display-fill-column-indicator-mode-hook '(display-fill-column-indicator-mode-set-explicitly))
 '(global-display-fill-column-indicator-mode t)
 '(lsp-modeline-code-actions-enable nil)
 '(package-selected-packages
   '(typescript-mode lua-mode sublime-themes company xah-fly-keys which-key use-package tablist sudo-edit ssh smart-compile recompile-on-save rainbow-mode rainbow-delimiters pretty-mode org-superstar org-super-agenda org-noter org-bullets openwith mindre-theme magit lsp-mode log4e ido-vertical-mode helpful go-mode gntp font-utils flycheck doom-themes doom-modeline diminish dashboard darktooth-theme color-theme-sanityinc-tomorrow auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :foreground "#c5c8c6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 120 :width normal :foundry "PfEd" :family "Iosevka Curly"))))
 '(doom-modeline-bar ((t (:background "gainsboro"))))
 '(doom-modeline-bar-inactive ((t (:background "#585858"))))
 '(hl-line ((t (:extend t :background "gainsboro"))))
 '(warning ((t (:foreground "navajo white" :weight bold)))))

(put 'narrow-to-page 'disabled nil)
