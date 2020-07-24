#json.id @post.id
# json.extract! @post, :id, :title, :created_at
json.(@post, :id, :title, :created_at)  # calls call on the object which goes to extract method

json.edit_url edit_post_url(@post) if current_user.admin?


# Blocks
json.category do |j|
  j.(@post.category, :id, :title)
  json.url category_url(@post.category)
end

# Nest tags
# json.tags @post.tags, :name

# Alternate way to access nested data
# json.tags @post.tags do |tag|
#   json.(tag, :id, :name)
# end

# Using partial
json.tags @post.tags do |tag|
  json.partial! tag
end

# json.partial! "posts/post", post: @post
