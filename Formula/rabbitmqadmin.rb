class Rabbitmqadmin < Formula
  desc "Lightweight RabbitMQ Management CLI"
  homepage "https://www.rabbitmq.com/management-cli.html"
  url "https://raw.githubusercontent.com/rabbitmq/rabbitmq-management/v3.12.0/bin/rabbitmqadmin"
  sha256 "8c7481bcd432e6e4a4e9405ff1d18d1d8b0c8ad93d0f5b4c735a279f2f5ef8c7"
  version "3.12.0"

  def install
    bin.install "rabbitmqadmin"
  end

  test do
    system "#{bin}/rabbitmqadmin", "--help"
  end
end