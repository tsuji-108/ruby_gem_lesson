# CHANGELOG

## 2026.02.28

### gem 名・モジュール名の変更

- gem 名を `ruby_gem_lesson_vec_and_math` → `math_lesson` に変更
- モジュール名を `RubyGemLesson` → `MathLesson` に変更
- 以下のファイルをリネーム
  - `lib/ruby_gem_lesson.rb` → `lib/math_lesson.rb`
  - `lib/ruby_gem_lesson/` → `lib/math_lesson/`
  - `ruby_gem_lesson.gemspec` → `math_lesson.gemspec`
  - `test/ruby_gem_lesson.test.rb` → `test/math_lesson.test.rb`
  - `sig/ruby_gem_lesson.rbs` → `sig/math_lesson.rbs`

### Vector・Matrix クラスへの書き換え

- `lib/math_lesson.rb` の実装を Ruby 標準ライブラリの `Vector` / `Matrix` クラスを使った実装に変更
  - `mutiple_scalar`: `vec.map { |c| c * scalar }` → `(Vector[*vec] * scalar).to_a`
  - `mutiple_matrix`: 手動ループによるドット積計算 → `Matrix.rows(...) * Vector[*vec]`
