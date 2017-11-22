;;;; wesnoth-bot-example.lisp

(in-package #:wesnoth-bot-example)

;;; "wesnoth-bot-example" goes here. Hacks and glory await!

;; defines a command "!hello" that when it receives it via lobby or whisper
;; it will respond in lobby with "Hello World"
(define-wesnoth-command hello *default-command-prefix* "hello" (params)
    "says hello"
  ;; wml-message sends to lobby (wml-whisper *current-bot* "username" "message")
  ;; is also an option
  (wml-message *current-bot* "Hello World"))

(define-wesnoth-command quit *default-command-prefix* "quit" (params)
    "quit the bot"
  (stop-bot *current-bot*))

;; defines a bot spawner called hello-bot that runs on version "1.12.6"
;; and uses the commands 'hello' and 'quit'
(define-wesnoth-bot-spawner hello-bot "1.12.6" (hello quit)
  ;; this is will start the bot and connect it to the server
  ;; when you call the spawner function
  (start-bot *current-bot*))

(defun create-a-bot ()
  ;; this is the bot spawner function
  ;; you give it a username to connect to the server with
  ;; it can optionally take a password if your bot is registered
  (make-hello-bot "bot_hello"))
