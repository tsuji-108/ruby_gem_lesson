# frozen_string_literal: true

require_relative "ruby_gem_lesson/version"

module RubyGemLesson
  class Error < StandardError; end

  # 縦ベクトルのスカラー倍
  def self.mutiple_scalar(vec, scalar)
    vec.map { |component| component * scalar }
  end

  # 縦ベクトル x 行列
  # vec: [x, y, z] の縦ベクトル
  # mat: 1 次配列を 3 成分ごと区切った行列。例: [x, 0, 0, 0, y, 0, 0, 0, 1] -> [[x, 0, 0], [0, y, 0], [0, 0, 1]]
  def self.mutiple_matrix(vec, mat)
    # TODO: 異常系は後ほど

    result = []
    mat.each_slice(3).each do |mat_row|
      # mat_row.zip(vec) により、[x, 0, 0].zip([x, y, z]) が [[x, x], [0, y], [0, z]] となる
      # .map により、[x, x], [0, y], [0, z] の各自配列に対して、成分ごとに乗算する
      # .sum により、合計値を返す。最終的にスカラーになる
      result << mat_row.zip(vec).map { |component, component2| component * component2 }.sum
    end
    result
  end

end
