;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     sql
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      company-idle-delay 0
                      company-tooltip-limit 20
                      company-tooltip-idle-delay 0
                      company-minimum-prefix-length 2)
     better-defaults
     (c-c++ :variables
            c-c++-backend 'lsp-ccls
            c-c++-backend nil
            c-c++-adopt-subprojects t
            ;; c-c++-lsp-enable-semantic-highlight 'rainbow
            c-c++-enable-google-style t
            ;; c-c++-dap-adapters '(dap-lldb dap-cpptools)
            lsp-ui-sideline-enable nil
            )
     cmake
     csv
     ;; (chinese :variables
     ;;          chinese-enable-avy-pinyin nil)
     ;; dap
     (docker :variables
             docker-exclude-packages '(docker-tramp))
     (emacs-lisp)
     (erlang)
     (git :variables
          magit-diff-refine-hunk t)
     go
     ;; helm
     helpful
     (html :variables)
     ;; (ipython-notebook :variables
     ;;                   ein:output-area-inlined-images t)
     (ivy :variables
          ivy-extra-directories '("./"))
     (javascript :variables
                 js-indent-level 2
                 js2-strict-missing-semi-warning nil
                 js2-missing-semi-one-line-override t)
     ;; (erc :variables
     ;;      erc-server-list `(("irc.libera.chat"
     ;;                         :port "6697"
     ;;                         :ssl t
     ;;                         :nick "rayw")))
     (lsp :variables
          lsp-headerline-arrow ">"
          lsp-treemacs-theme "Iconless"
          treemacs-use-all-the-icons-theme t
          lsp-file-watch-threshold 4096)
     lua
     (markdown :variables
               markdown-live-preview-engine 'vmd)
     ;; multiple-cursors
     ;; (mu4e :variables
     ;;       mu4e-installation-path (expand-file-name "~/repo/open-source/mu/dist/share/emacs/site-lisp/mu4e")
     ;;       mu4e-enable-mode-line t
     ;;       mu4e-enable-notifications t
     ;;       mu4e-enable-async-operations t
     ;;       mu4e-sent-folder   "/sent"
     ;;       mu4e-drafts-folder "/drafts"
     ;;       mu4e-trash-folder  "/trash"
     ;;       mu4e-refile-folder "/archive"
     ;;       mu4e-update-interval 120
     ;;       mu4e-autorun-background-at-startup t
     ;;       mu4e-org-compose-support t
     ;;       mu4e-org-support t
     ;;       mu4e-org-link-support t
     ;;       org-mu4e-convert-to-html t
     ;;       mu4e-get-mail-command "mbsync -La"
     ;;       mu4e-headers-date-format "%Y-%m-%d %H:%M:%S"
     ;;       mu4e-headers-unread-mark '("u" . "")
     ;;       mu4e-headers-draft-mark '("D" . "")
     ;;       mu4e-headers-flagged-mark '("F" . "")
     ;;       mu4e-headers-new-mark '("N" . "")
     ;;       mu4e-headers-passed-mark '("P" . "")
     ;;       mu4e-headers-replied-mark '("R" . "")
     ;;       mu4e-headers-seen-mark '("" . "")
     ;;       mu4e-headers-trashed-mark '("" . "")
     ;;       mu4e-headers-attach-mark '("@" . "")
     ;;       mu4e-headers-encrypted-mark '("x" . "")
     ;;       mu4e-headers-signed-mark '("s" . "")
     ;;       mu4e-headers-fields '((:human-date . 24)
     ;;                             (:from . 24)
     ;;                             (:flags . 12)
     ;;                             (:subject))
     ;;       mu4e-use-fancy-chars nil)
     nginx
     (org :variables
          org-enable-reveal-js-support t)
     (php :variables
          c-indentation-style "php")
     ;; protobuf
     (rust :variables
           lsp-rust-server 'rust-analyzer
           rust-backend 'lsp
           flycheck-rust-cargo-executable (expand-file-name "~/.cargo/bin/cargo")
           cargo-process--command-watch "watch -x run")
     (shell :variables
            vterm-keymap-exceptions '("C-c" "C-x" "C-u" "C-g" "C-h" "C-l" "M-x" "M-o" "C-y" "M-y" "M-`")
            shell-default-shell 'vterm
            shell-default-height 30
            shell-default-position 'bottom
            shell-enable-smart-eshell t)
     (python :variables
             python-indent-offset 4
             python-backend 'lsp
             python-lsp-server 'pyright)
     spacemacs-editing
     (spacemacs-modeline :variables
                         spaceline-minor-modes-p nil)
     spacemacs-layouts
     (spell-checking :variables
                     spell-checking-enable-by-default nil)
     (translate :variables
                gts-translate-list '(("en" "zh"))
                translate/paragraph-render 'buffer
                translate/word-render 'buffer)
     (osx :variables
          osx-command-as 'meta
          osx-function-as nil
          osx-right-command-as 'super
          osx-right-option-as 'left
          osx-right-control-as 'left
          osx-swap-option-and-command nil)
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil)
     ;; tern
     (treemacs :variables
               treemacs-use-all-the-icons-theme t
               treemacs-no-png-images t)
     typescript
     unicode-fonts
     (version-control :variables
                      version-control-diff-side 'left
                      version-control-diff-tool 'diff-hl)
     yaml)


   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(ag
                                      gptel
                                      visual-regexp
                                      editorconfig
                                      (copilot :location (recipe
                                                          :fetcher github
                                                          :repo "copilot-emacs/copilot.el"
                                                          :files ("*.el" "dist"))
                                               :variables
                                               copilot-network-proxy '(:host
                                                                       "127.0.0.1"
                                                                       :port 41091)))
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setenv "LIBRARY_PATH"
          (string-join
           '("/opt/homebrew/opt/gcc/lib/gcc/13"
             "/opt/homebrew/opt/libgccjit/lib/gcc/13"
             "/opt/homebrew/opt/gcc/lib/gcc/13/gcc/aarch64-apple-darwin22/13")
           ":"))
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need to
   ;; compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;;
   ;; WARNING: pdumper does not work with Native Compilation, so it's disabled
   ;; regardless of the following setting when native compilation is in effect.
   ;;
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024 16)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 0

   ;; Scale factor controls the scaling (size) of the startup banner. Default
   ;; value is `auto' for scaling the logo automatically to fit all buffer
   ;; contents, to a maximum of the full image height and a minimum of 3 line
   ;; heights. If set to a number (int or float) it is used as a constant
   ;; scaling factor for the default logo size.
   dotspacemacs-startup-banner-scale 'auto

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists nil

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "all-the-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons nil

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'emacs-lisp-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'emacs-lisp-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent t

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable t

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(seti)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator nil :separator-scale 1.05)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. This setting has no effect when
   ;; running Emacs in terminal. The font set here will be used for default and
   ;; fixed-pitch faces. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Monaco" :size 12.0 :weight normal :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; It is also possible to use a posframe with the following cons cell
   ;; `(posframe . position)' where position can be one of `center',
   ;; `top-center', `bottom-center', `top-left-corner', `top-right-corner',
   ;; `top-right-corner', `bottom-left-corner' or `bottom-right-corner'
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'right-then-bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; Whether side windows (such as those created by treemacs or neotree)
   ;; are kept or minimized by `spacemacs/toggle-maximize-window' (SPC w m).
   ;; (default t)
   dotspacemacs-maximize-window-keep-side-windows t

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols nil

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; The backend used for undo/redo functionality. Possible values are
   ;; `undo-fu', `undo-redo' and `undo-tree' see also `evil-undo-system'.
   ;; Note that saved undo history does not get transferred when changing
   ;; your undo system. The default is currently `undo-fu' as `undo-tree'
   ;; is not maintained anymore and `undo-redo' is very basic."
   dotspacemacs-undo-system 'undo-fu

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format nil

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; The variable `global-spacemacs-whitespace-cleanup-modes' controls
   ;; which major modes have whitespace cleanup enabled or disabled
   ;; by default.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq
   scroll-bar-mode nil
   ag-highlight-search t
   default-directory (expand-file-name "~/")
   source-directory (expand-file-name "~/repo/open-source/emacs")
   ls-lisp-dirs-first t
   ls-lisp-use-insert-directory-program nil)
  (when (fboundp 'native-compile)
    (setq comp-deferred-compilation-deny-list '("powerline")
          native-comp-async-report-warnings-errors nil)
    (setq package-native-compile t))
  (when (configuration-layer/layer-used-p 'chinese)
    (spacemacs//set-monospaced-font "Monaco" "PingFang SC" 12 14))
  (when (featurep 'gptel)
    (setq gptel-backend (gptel-make-openai
                            "ChatGPT-CN"
                          :key (getenv "OPENAI_API_KEY")
                          :host "cn.gptapi.asia"
                          :models '("gpt-4o-mini"
                                    "gpt-4" "gpt-4o" "gpt-4-turbo" "gpt-4-turbo-preview"
                                    "gpt-4-32k" "gpt-4-1106-preview" "gpt-4-0125-preview")))))

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (add-hook 'treemacs-icons-dired-mode-hook
            (lambda ()
              (when treemacs-use-all-the-icons-theme
                (require 'treemacs-all-the-icons)
                (treemacs-load-theme 'all-the-icons))))
  (menu-bar-mode -1)
  (global-set-key (kbd "M-`") 'other-window)
  (when (functionp 'projectile-ag)
    (global-set-key (kbd "C-c g") 'projectile-ag))
  (when (configuration-layer/layer-used-p 'python)
    (add-hook 'python-mode-hook (lambda () (setq-local flycheck-checker 'python-pyright))))
  (when (configuration-layer/layer-used-p 'ivy)
    (define-key ivy-minibuffer-map (kbd "<tab>") (lambda ()
                                                   (interactive)
                                                   (cond ((= 1 ivy--length)
                                                          (ivy-alt-done))
                                                         ((>= (+ ivy--index 1) ivy--length)
                                                          (ivy-set-index 0))
                                                         (t (ivy-next-line))))))
  ;; (when (configuration-layer/package-used-p 'company)
  ;;   (add-hook 'company-mode-hook
  ;;             (lambda () (define-key company-mode-map [remap indent-for-tab-command]
  ;;                                    'company-indent-or-complete-common))))
  ;; (define-key copilot-mode-map (kbd "RET") 'copilot-accept-completion)
  ;; (define-key copilot-mode-map (kbd "TAB") 'copilot-next-completion)
  ;; (define-key copilot-mode-map (kbd "M-n") 'copilot-next-completion)
  ;; (define-key copilot-mode-map (kbd "M-p") 'copilot-previous-completion)
  (when (configuration-layer/layer-used-p 'mu4e)
    (if-let* ((context-file "~/.mu4e.el")
              (file-exists-p context-file))
        (progn
          (require 'mu4e)
          (load-file context-file)
          (add-hook 'mu4e-compose-mode-hook 'turn-off-auto-fill))))
  (when (configuration-layer/layer-used-p 'gnus)
    (if-let* ((context-file "~/.gnus.el")
              (file-exists-p context-file))
        (load-file context-file)))
  (when (configuration-layer/package-used-p 'magit)
    (global-set-key (kbd "M-m M-m") 'magit))
  (when (configuration-layer/layer-used-p 'version-control)
    (global-set-key (kbd "C-c C-n") 'spacemacs/vcs-next-hunk)
    (global-set-key (kbd "C-c C-p") 'spacemacs/vcs-previous-hunk))
  (global-set-key (kbd "C-c C-f") 'find-name-dired)
  (add-hook 'projectile-mode-hook
            (lambda () (define-key projectile-mode-map (kbd "C-c g") 'projectile-ag)))
  (add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode)

  (defun split-window-horizontally-instead ()
    "Kill any other windows and re-split such that the current window is on the top half of the frame."
    (interactive)
    (let ((other-buffer (and (next-window) (window-buffer (next-window)))))
      (delete-other-windows)
      (split-window-horizontally)
      (when other-buffer
        (set-window-buffer (next-window) other-buffer))))
  (defun split-window-vertically-instead ()
    "Kill any other windows and re-split such that the current window is on the left half of the frame."
    (interactive)
    (let ((other-buffer (and (next-window) (window-buffer (next-window)))))
      (delete-other-windows)
      (split-window-vertically)
      (when other-buffer
        (set-window-buffer (next-window) other-buffer))))
  (global-set-key (kbd "C-x |") 'split-window-horizontally-instead)
  (global-set-key (kbd "C-x _") 'split-window-vertically-instead)
  (when (fboundp 'vr/replace)
    (global-set-key (kbd "C-c C-/") 'vr/replace))
  (put 'narrow-to-page 'disabled nil))


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(ansi-color-names-vector
     ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
   '(connection-local-criteria-alist
     '(((:application tramp :machine "bogon")
        tramp-connection-local-darwin-ps-profile)
       ((:application eshell)
        eshell-connection-default-profile)
       ((:application tramp :machine "localhost")
        tramp-connection-local-darwin-ps-profile)
       ((:application tramp :machine "Rays-MBP.local")
        tramp-connection-local-darwin-ps-profile)
       ((:application tramp)
        tramp-connection-local-default-system-profile tramp-connection-local-default-shell-profile)))
   '(connection-local-profile-alist
     '((eshell-connection-default-profile
        (eshell-path-env-list))
       (tramp-connection-local-darwin-ps-profile
        (tramp-process-attributes-ps-args "-acxww" "-o" "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state=abcde" "-o" "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
        (tramp-process-attributes-ps-format
         (pid . number)
         (euid . number)
         (user . string)
         (egid . number)
         (comm . 52)
         (state . 5)
         (ppid . number)
         (pgrp . number)
         (sess . number)
         (ttname . string)
         (tpgid . number)
         (minflt . number)
         (majflt . number)
         (time . tramp-ps-time)
         (pri . number)
         (nice . number)
         (vsize . number)
         (rss . number)
         (etime . tramp-ps-time)
         (pcpu . number)
         (pmem . number)
         (args)))
       (tramp-connection-local-busybox-ps-profile
        (tramp-process-attributes-ps-args "-o" "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "stat=abcde" "-o" "ppid,pgid,tty,time,nice,etime,args")
        (tramp-process-attributes-ps-format
         (pid . number)
         (user . string)
         (group . string)
         (comm . 52)
         (state . 5)
         (ppid . number)
         (pgrp . number)
         (ttname . string)
         (time . tramp-ps-time)
         (nice . number)
         (etime . tramp-ps-time)
         (args)))
       (tramp-connection-local-bsd-ps-profile
        (tramp-process-attributes-ps-args "-acxww" "-o" "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
        (tramp-process-attributes-ps-format
         (pid . number)
         (euid . number)
         (user . string)
         (egid . number)
         (group . string)
         (comm . 52)
         (state . string)
         (ppid . number)
         (pgrp . number)
         (sess . number)
         (ttname . string)
         (tpgid . number)
         (minflt . number)
         (majflt . number)
         (time . tramp-ps-time)
         (pri . number)
         (nice . number)
         (vsize . number)
         (rss . number)
         (etime . number)
         (pcpu . number)
         (pmem . number)
         (args)))
       (tramp-connection-local-default-shell-profile
        (shell-file-name . "/bin/sh")
        (shell-command-switch . "-c"))
       (tramp-connection-local-default-system-profile
        (path-separator . ":")
        (null-device . "/dev/null"))))
   '(evil-want-Y-yank-to-eol nil)
   '(hl-todo-keyword-faces
     '(("TODO" . "#dc752f")
       ("NEXT" . "#dc752f")
       ("THEM" . "#2d9574")
       ("PROG" . "#4f97d7")
       ("OKAY" . "#4f97d7")
       ("DONT" . "#f2241f")
       ("FAIL" . "#f2241f")
       ("DONE" . "#86dc2f")
       ("NOTE" . "#b1951d")
       ("KLUDGE" . "#b1951d")
       ("HACK" . "#b1951d")
       ("TEMP" . "#b1951d")
       ("FIXME" . "#dc752f")
       ("XXX+" . "#dc752f")
       ("\\?\\?\\?+" . "#dc752f")))
   '(indicate-empty-lines nil)
   '(jenkinsfile-mode-indent-offset 2)
   '(js-switch-indent-offset 2)
   '(lsp-clients-deno-config "./tsconfig.json")
   '(org-export-with-planning t)
   '(org-fontify-done-headline nil)
   '(org-fontify-todo-headline nil)
   '(org-todo-keyword-faces
     '(("TODO" . "royalblue")
       ("WAITING" . "magenta")
       ("CANCEL" . "red")
       ("DONE" . "chartreuse")))
   '(org-todo-keywords '((sequence "TODO" "WAITING" "CANCEL" "DONE")))
   '(package-selected-packages
     '(pyvenv-auto gptel rustic 0blayout company-php ac-php-core xcscope company-phpactor counsel-gtags drupal-mode geben ggtags php-auto-yasnippets php-extras php-mode phpactor composer php-runtime phpcbf phpunit jenkinsfile-mode company-tabnine dash emacsql forge orgit evil-collection git-commit git-link git-modes git-timemachine go-gen-test go-translate helpful hl-todo impatient-mode js2-mode live-py-mode lsp-mode lsp-treemacs macrostep magit magit-section org-re-reveal org-rich-yank orgit-forge package-lint pcre2el posframe symbol-overlay treepy vterm erlang format-sql hive edit-indirect sqlup-mode copilot dap-mode lsp-docker bui holiday-pascha-etc writeroom-mode link-hint docker spacemacs-whitespace-cleanup yasnippet-snippets evil-lion winum ivy-hydra disaster google-translate paradox evil-cleverparens js2-refactor evil-iedit-state treemacs-magit ivy-yasnippet diff-hl ivy-avy elisp-def gendoxy indent-guide auto-compile devdocs ob-restclient org-superstar ag web-beautify visual-regexp org-pomodoro evil-textobj-line dockerfile-mode ron-mode flycheck-elsa font-lock+ evil-visual-mark-mode osx-trash evil-unimpaired poetry aggressive-indent ivy-xref volatile-highlights elisp-slime-nav term-cursor symon treemacs-projectile nose translate-mode scss-mode nameless highlight-numbers typescript-mode go-eldoc clean-aindent-mode slim-mode diminish blacken highlight-parentheses flycheck-ycmd drag-stuff esh-help string-inflection nodejs-repl org-mime space-doc js-doc unkillable-scratch spacemacs-purpose-popwin osx-dictionary org-projectile company-restclient ivy-purpose vi-tilde-fringe json-mode sass-mode expand-region launchctl godoctor helm-make inspector web-mode uuidgen livid-mode evil-anzu cmake-mode importmagic vmd-mode cargo company-ycmd fuzzy which-key go-impl osx-clipboard emr hybrid-mode lorem-ipsum evil-escape fancy-battery help-fns+ flx-ido gh-md tide go-guru tagedit dumb-jump lsp-python-ms gitignore-templates pippel terminal-here evil-surround evil-lisp-state eval-sexp-fu prettier-js markdown-toc company-rtags seti-theme undo-tree emmet-mode org-contrib golden-ratio pytest company-lua auto-highlight-symbol pug-mode ob-http multi-term evil-matchit evil-visualstar go-tag go-fill-struct org-download csv-mode nginx-mode flycheck-rust pyenv-mode dotenv-mode ace-link json-reformat toc-org shell-pop sphinx-doc go-rename smeargle toml-mode company-c-headers gnuplot restart-emacs yapfify flycheck-rtags flycheck-pos-tip evil-goggles google-c-style lsp-ui highlight-indentation evil-numbers evil-tutor holy-mode ivy-rtags evil-exchange hide-comnt npm-mode evil-args eshell-prompt-extras hungry-delete lsp-origami pydoc spaceline-all-the-icons yaml-mode ws-butler flycheck-package company-web editorconfig column-enforce-mode eshell-z quickrun multi-line company-go unicode-fonts open-junk-file unfill treemacs-persp multi-vterm evil-org smex rainbow-delimiters json-navigator persistent-scratch evil-evilified-state flyspell-correct-ivy counsel-css reveal-in-osx-finder overseer treemacs-all-the-icons wgrep cpp-auto-include code-cells ccls centered-cursor-mode evil-indent-plus auto-dictionary evil-nerd-commenter org-cliplink lsp-pyright cython-mode pipenv vim-powerline password-generator info+ string-edit-at-point dired-quick-sort pip-requirements auto-yasnippet ac-ispell popwin eyebrowse treemacs-icons-dired company-anaconda counsel-projectile py-isort xterm-color lsp-ivy mmm-mode pylookup org-present git-messenger browse-at-remote rust-mode mwim))
   '(url-proxy-services nil))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(fixed-pitch ((t (:family "Monaco"))))
   '(font-lock-comment-face ((t (:foreground "gray36"))))
   '(fringe ((t (:background "#151718" :foreground "gray30"))))
   '(highlight ((t (:background "gray32"))))
   '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t)
   '(match ((t (:inherit default :background "#151718" :foreground "red" :weight extra-bold))))
   '(mode-line ((t (:background "#0D1011" :foreground "#D4D7D6" :underline "#4F99D3" :family "Monaco"))))
   '(pulse-highlight-face ((t (:extend t :background "chartreuse4"))))
   '(pulse-highlight-start-face ((t (:extend t :background "chartreuse4"))))
   '(shadow ((t (:foreground "grey30"))))
   '(translate-paragraph-highlight ((t (:extend t :background "grey15"))))
   '(translate-paragraph-highlight-face ((t (:extend t :background "#002233")))))
  )
