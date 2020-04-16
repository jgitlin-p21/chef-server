class Chef
  class Dist
    class Server
      # This class is not fully implemented, depending on it is not recommended!
      # When referencing a product directly, like Chef (Now Chef Infra)
      PRODUCT = "CINC Infra Server".freeze

      # A short designation for the product, used in Windows event logs
      # and some nomenclature.
      SHORT = "cinc-server".freeze

      # product website address
      WEBSITE = "https://gitlab.farcry.sitepalette.com/cinc/server".freeze

      # The configuration directory
      CONF_DIR = "/etc/cinc-server".freeze

      # The server's configuration utility
      CTL = "cinc-server-ctl".freeze
    end
  end
end