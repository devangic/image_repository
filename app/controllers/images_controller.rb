class ImagesController < ApplicationController
	def index
		@images = Image.all.public_images
	end

	def create
		params[:image][:sources].each do |source|
			image = current_user.images.build
			image.source.attach(source)
			image.save
		end

		redirect_to root_path
	end

	def my_images
		@images = current_user.images
	end

	def destroy
		image = Image.find(params[:id])
		image.destroy

		redirect_to my_images_path
	end

	def delete_images
		begin
			image_ids = params[:image_ids]
			image_ids.each do |id|
				img = Image.find(id)
				img.destroy
			end
			return {success: true}
		rescue
			return {success: false}
		end
	end

	def change_permission
		image = Image.find(params[:id])
		if image.is_public?
			image.is_public = false
		else
			image.is_public = true
		end
		image.save

		redirect_to my_images_path
	end
end