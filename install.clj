#!/usr/bin/env bb

;; Welcome to gudoman (Guto's dotfiles manager)
;; This script is responsible for installing all the dotfiles and
;; dependencies in a new system using babashka.

;; WARNING: This script is not idempotent. It will overwrite your
;; dotfiles and dependencies. The dotfiles are stored in the $HOME.

(require '[babashka.process :as process])
(require '[babashka.classpath :as classpath])
(require '[babashka.fs :as fs])

(def dotfiles
  (str (System/getenv "HOME") "/dotfiles/"))

(defn execute-shell-command [command]
  (let [result (process/sh command)]
    (if (= 0 (:exit result))
      (:out result)
      (str "Error executing command: " command))))

(defn ask [prompt]
  (print (str prompt " (y/n): "))
  (flush)
  (let [response (read-line)]
    (or (= "y" (clojure.string/lower-case response))
        (empty? response))))

(defn create-sl [file]
  (let [filename (fs/file-name file)]
    (fs/create-sym-link (str (System/getenv "HOME") "/.config/" filename)
                        file)))

(defn list-and-process-files [directory]
  (doseq [file (fs/list-dir directory)]
    (when (ask (str "Do you want to import " file))
      (create-sl file))))

(defn turing []
  (list-and-process-files (str dotfiles "/turing/.config")))

(defn artemis []
  (list-and-process-files (str dotfiles "/artemis/.config")))

;; main
(let [[system] *command-line-args*]
  (when (empty? system)
    (println "Hey, you forgot to specify a system!")
    (println "Usage: <system>")
    (System/exit 1))
  (case system
    "turing" (turing)
    "artemis" (artemis)
    (println "Unknown system" system)
    (System/exit 1)))
