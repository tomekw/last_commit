require "fileutils"
require "singleton"

class DummyRepo
  include Singleton

  def path
    File.join(%w(spec fixtures dummy_repo))
  end

  def act_as_real
    FileUtils.mv(fake_git_config_path, real_git_config_path)
  end

  def act_as_fake
    FileUtils.mv(real_git_config_path, fake_git_config_path)
  end

  private

  def fake_git_config_path
    File.join(path, "dot_git")
  end

  def real_git_config_path
    File.join(path, ".git")
  end
end
