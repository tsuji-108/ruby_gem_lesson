require 'minitest/autorun'
require_relative "../lib/ruby_gem_lesson"

class SampleTest < Minitest::Test
    def test_mutiple_scalar
      assert_equal([3, 6], RubyGemLesson.mutiple_scalar([1, 2], 3)) 
    end

    # 縦ベクトルの拡大
    def test_mutiple_matrix_scale
      assert_equal([5, 12, 0], RubyGemLesson.mutiple_matrix([1, 2, 0], [5, 0, 0, 0, 6, 0, 0, 0, 1])) 
    end

    # 縦ベクトルの回転 [1, 0, 0] を90度反時計周りに回転 -> [0, 1, 0]
    def test_mutiple_matrix_rotate_90
      cos_90 = 0
      sin_90 = 1
      rotation_matrix = [cos_90, -sin_90, 0, sin_90, cos_90, 0, 0, 0, 1]
      assert_equal([0, 1, 0], RubyGemLesson.mutiple_matrix([1, 0, 0], rotation_matrix))
    end

  # 180度回転 [1, 0, 0] を180度反時計周りに回転 -> [-1, 0, 0]
  def test_mutiple_matrix_rotate_180
    cos_180 = -1
    sin_180 = 0
    rotation_matrix = [cos_180, -sin_180, 0, sin_180, cos_180, 0, 0, 0, 1]
    assert_equal([-1, 0, 0], RubyGemLesson.mutiple_matrix([1, 0, 0], rotation_matrix))
  end

  # 60度回転 [1, 0, 0] を60度反時計周りに回転 -> [1/2, √3/2, 0]
  def test_mutiple_matrix_rotate_60
    cos_60 = 0.5
    sin_60 = Math.sqrt(3) / 2
    rotation_matrix = [cos_60, -sin_60, 0, sin_60, cos_60, 0, 0, 0, 1]

    result = RubyGemLesson.mutiple_matrix([1, 0, 0], rotation_matrix)

    # TODO: ココは AI に書いてもらった。assert_in_delta は後ほど調べる。
    assert_in_delta(0.5, result[0], 1e-10)
    assert_in_delta(Math.sqrt(3) / 2, result[1], 1e-10)
    assert_in_delta(0, result[2], 1e-10)
  end

  # TODO: 細かいテストは後ほど
end
