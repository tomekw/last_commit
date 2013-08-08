require "git"

class LastCommit
  def initialize(git_repository_path, branch)
    self.git_repository_path = git_repository_path
    self.branch              = branch
  end

  def author
    last_commit.author.name
  end

  def message
    last_commit.message
  end

  def sha
    last_commit.sha
  end

  private

  attr_accessor :git_repository_path, :branch

  def git_repository
    @git_repository ||= Git.open(git_repository_path)
  end

  def requested_branch
    @requested_branch ||= git_repository.branches[branch] or
      raise ArgumentError, "branch does not exist"
  end

  def last_commit
    requested_branch.gcommit
  end
end
