require "formula"

REPOSITORY_URL='https://github.com/git-chglog/git-chglog'
HOMEBREW_GIT_VERSION='0.7.1'

class GitChglog < Formula
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/git-chglog_linux_amd64"
  sha256 "b3c7070e3a53eff952a15693e103861484911a0640b4f28c97e7bc8e72cc0f46"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "git-chglog_linux_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
