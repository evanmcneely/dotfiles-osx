return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "php" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "autozimu/LanguageClient-neovim" },
    opts = {
      servers = {
        intelephense = {
          LanguageClient_serverCommands = {
            -- rust = { "~/.cargo/bin/rustup", "run", "stable", "rls" },
            -- javascript = { "/usr/local/bin/javascript-typescript-stdio" },
            -- 'javascript.jsx' = {'tcp://127.0.0.1:2089'},
            -- python = { "/usr/local/bin/pyls" },
            -- ruby = { "~/.rbenv/shims/solargraph", "stdio" },
          },
          files = {
            maxSize = 5000000,
          },
          stubs = {
            "wordpress",
            "apache",
            "bcmath",
            "bz2",
            "calendar",
            "com_dotnet",
            "Core",
            "ctype",
            "curl",
            "date",
            "dba",
            "dom",
            "enchant",
            "exif",
            "FFI",
            "fileinfo",
            "filter",
            "fpm",
            "ftp",
            "gd",
            "gettext",
            "gmp",
            "hash",
            "iconv",
            "imap",
            "intl",
            "json",
            "ldap",
            "libxml",
            "mbstring",
            "meta",
            "mysqli",
            "oci8",
            "odbc",
            "openssl",
            "pcntl",
            "pcre",
            "PDO",
            "pdo_ibm",
            "pdo_mysql",
            "pdo_pgsql",
            "pdo_sqlite",
            "pgsql",
            "Phar",
            "posix",
            "pspell",
            "random",
            "readline",
            "Reflection",
            "session",
            "shmop",
            "SimpleXML",
            "snmp",
            "soap",
            "sockets",
            "sodium",
            "SPL",
            "sqlite3",
            "standard",
            "superglobals",
            "sysvmsg",
            "sysvsem",
            "sysvshm",
            "tidy",
            "tokenizer",
            "xml",
            "xmlreader",
            "xmlrpc",
            "xmlwriter",
            "xsl",
            "Zend OPcache",
            "zip",
            "zlib",
          },
          -- LanguageClient_stubs = {
          --   "bcmath",
          --   "bz2",
          --   "calendar",
          --   "Core",
          --   "curl",
          --   "zip",
          --   "zlib",
          -- "wordpress",
          --   "woocommerce",
          --   "acf-pro",
          --   "wordpress-globals",
          --   "wp-cli",
          --   "genesis",
          --   "polylang",
          -- },
          -- stubs = { "wordpress" },
          -- environment = {
          --   includePaths = "/Users/dev/lp/wordpress3",
          -- },
        },
      },
      setup = {
        intelephense = function(_, _)
          -- local lsp_utils = require "plugins.lsp.utils"
          -- lsp_utils.on_attach(function(client, buffer)
          -- if client.name == "intelliphence" then
          --   client.server_capabilities.document_formatting = true
          -- end
          -- end)
        end,
      },
    },
  },
}
