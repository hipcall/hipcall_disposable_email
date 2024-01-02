defmodule HipcallDisposableEmailTest do
  use ExUnit.Case
  doctest HipcallDisposableEmail

  test "disposable?" do
    assert HipcallDisposableEmail.disposable?("hello@hipcall.com") == false
    assert HipcallDisposableEmail.disposable?("info@gmal.com") == true
  end

  test "domain_name" do
    assert HipcallDisposableEmail.Tools.domain_name("hello@hipcall.com") == "hipcall.com"
    assert HipcallDisposableEmail.Tools.domain_name("hello@gmail.com") == "gmail.com"
    assert HipcallDisposableEmail.Tools.domain_name("hellogmail.com") == nil
    assert HipcallDisposableEmail.Tools.domain_name("hello world") == nil
  end
end
