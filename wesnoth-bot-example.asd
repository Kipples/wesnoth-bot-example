;;;; wesnoth-bot-example.asd

(asdf:defsystem #:wesnoth-bot-example
  :description "An example use of wesnoth-bot"
  :author "Kipples <kipples@kipples.net>"
  :license "GPL"
  :serial t
  :depends-on (:wesnoth-bot)
  :components ((:file "package")
               (:file "wesnoth-bot-example")))
