require "stringex"
class New < Thor
  desc "post", "create a new post"
  method_option :editor, :default => "vim"
  def post(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    filename = "_posts/#{date}-#{title.to_url}.md"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "comments: true"
      post.puts "categories:"
      post.puts " -"
      post.puts "---"
    end

    system(options[:editor], filename)
  end

  desc "draft", "create a new draft"
  method_option :editor, :default => "vim"
  def draft(*title)
    title = title.join(" ")
    filename = "_drafts/#{title.to_url}.md"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new draft: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "comments: true"
      post.puts "categories:"
      post.puts " -"
      post.puts "---"
    end

    system(options[:editor], filename)
  end

  desc "link TITLE URL", "add a link (TITLE,URL)"
  def link(title, url)
    date = Time.now

    data = YAML.load_file('_data/links.yml')
    data << {
      'title' => title,
      'url'   => url,
      'added' => date,
			'description' => ''
    }
    open("_data/links.yml", 'w') do |file|
      file.write data.to_yaml
    end

  end

end
