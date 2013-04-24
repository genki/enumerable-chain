# coding:utf-8
module Enumerable
  class Chain < BasicObject
    def initialize(*a, &b) @s, @m, *@a, @b = *a, b end
    def method_missing(*a, &b) Chain.new self, *a, &b end
    def >; @m ? @s.>.map{|i| i.send @m, *@a, &@b} : @s end
  end
  def <(*a, &b) a.empty? && b.nil? ? Chain.new(self) : super end
end
