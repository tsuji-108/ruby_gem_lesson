# frozen_string_literal: true

require 'matrix'
require_relative "math_lesson/version"

module MathLesson
  class Error < StandardError; end

  # 縦ベクトルのスカラー倍
  def self.mutiple_scalar(vec, scalar)
    (Vector[*vec] * scalar).to_a
  end

  # 縦ベクトル x 行列
  # vec: [x, y, z] の縦ベクトル
  # mat: 1 次配列を vec の要素数ごとに区切った行列。例: [x, 0, 0, 0, y, 0, 0, 0, 1] -> [[x, 0, 0], [0, y, 0], [0, 0, 1]]
  def self.mutiple_matrix(vec, mat)
    matrix = Matrix.rows(mat.each_slice(vec.size).to_a)
    (matrix * Vector[*vec]).to_a
  end

end
