class Rabbitmqadmin < Formula
  desc "Lightweight RabbitMQ Management CLI"
  homepage "https://github.com/rabbitmq/rabbitmqadmin-ng"
  url "https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.0.0/rabbitmqadmin-2.0.0-aarch64-apple-darwin"
  version "2.0.0"
  sha256 "a211d82b3b6780c488f3838a49b9f4d02684afa1010c44fa98fcd5b8cd844ab7"  # calculated below

  def install
    bin.install "rabbitmqadmin-2.0.0-aarch64-apple-darwin" => "rabbitmqadmin"
  end

  test do
    system "#{bin}/rabbitmqadmin", "--help"
  end
end