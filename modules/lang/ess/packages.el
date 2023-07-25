;; -*- no-byte-compile: t; -*-
;;; lang/ess/packages.el

(package! ess :pin "5c4ae91cefa5c56fd13b204a9a996825af836a67")
(package! ess-view-data :pin "c0b20e503c772eebbef6bbc6c89a707ba6ec42ec")
(package! ess-smart-equals :pin "fea9eea4b59c3e9559b379508e3500076ca99ef1")
(package! ess-r-insert-obj :pin "2ded9c23d0af2a7f6c0e02f9ea4af0e5b3cb7fb4")
(package! polymode :pin "ca060e081a1f849a880732670dc15370ac987b89")
(package! poly-R :pin "8024e852cfca642dea2045a41b2033baa2f1f9a5")
(package! quarto-mode :pin "a7b974f7d22ef939eaed8b9919434bcf20b1438f")

(when (modulep! +stan)
  (package! stan-mode :pin "150bbbe5fd3ad2b5a3dbfba9d291e66eeea1a581")
  (package! eldoc-stan :pin "150bbbe5fd3ad2b5a3dbfba9d291e66eeea1a581")
  (when (modulep! :completion company)
    (package! company-stan :pin "150bbbe5fd3ad2b5a3dbfba9d291e66eeea1a581"))
  (when (modulep! :checkers syntax -flymake)
    (package! flycheck-stan :pin "150bbbe5fd3ad2b5a3dbfba9d291e66eeea1a581")))
