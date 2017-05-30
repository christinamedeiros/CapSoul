# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Seeding Images"

IMAGE_COUNT = 3

IMAGES = ['http://localhost:3000/uploads/picture/attachment/7/50715303361__34646131-4D1D-49FE-A870-6A99D82DDC43.JPG',
  'http://localhost:3000/uploads/picture/attachment/8/50654752919__0AE2230C-319A-4BAE-9E3C-72041237387D.JPG',
  'https://www.google.com/search?q=cat&source=lnms&tbm=isch&sa=X&ved=0ahUKEwirtezztZbUAhVFeSYKHTAvAtMQ_AUIBigB&biw=1366&bih=650#imgrc=Mp6U7RbYNomHIM:'
]


(0..IMAGE_COUNT).each do |image|
  attachment = IMAGES.sample
  Picture.find_or_create_by!(attachent: attachment)
end
