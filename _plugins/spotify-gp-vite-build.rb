Jekyll::Hooks.register :site, :pre_render do |site|
    puts "Building projects/spotify-playlist-to-gigperformer Vite project..."
    system("cd projects/spotify-playlist-to-gigperformer && npm run build")
  end