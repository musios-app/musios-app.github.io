Jekyll::Hooks.register :site, :pre_render do |site|
  dir = "projects/spotify-playlist-to-gigperformer"
  if File.directory?("#{dir}/node_modules")
    puts "Building #{dir} Vite project..."
    system("cd #{dir} && pnpm run build")
  else
    puts "Skipping #{dir} build (run pnpm install there to enable it)"
  end
end
