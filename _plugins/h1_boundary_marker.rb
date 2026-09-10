Jekyll::Hooks.register :site, :post_write do |site|
  File.write(File.join(site.dest, "h1-boundary-marker.txt"), "marker-created-by-custom-plugin\n")
end
