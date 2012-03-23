class AddTestData < ActiveRecord::Migration
  def self.up
	Product.delete_all
Product.create!(:title => 'toyProduct', 
:description => 
%{<p>A simple toy product to use in this database
</p>}, :image_url => 'http://www.geekalerts.com/u/toy-story-digital-camera.jpg', 
:price => 0.99)

	Product.create!(:title => 'fakeProduct', 
	   :description => 
		%{<p>A ficitonal product to use in this database
		</p>}, 
	   :image_url => 'http://laughingsquid.com/wp-content/uploads/usb-toaster.jpg', 
	   :price => 1.99)

	Product.create!(:title => 'fakeBook', 
	   :description => 
		%{<p>A fake book for use in this database
		</p>}, 
	   :image_url => 'http://www.futurefiction.com/images/book_stack.gif', 
	   :price => 3.99)

	Product.create!(:title => 'fakeMusic', 
	   :description => 
		%{<p>Fictional music designed to work explicitly well with the environment of this database
		</p>}, 
	   :image_url => 'http://transparentproductions.org/wp-content/uploads/2010/04/Current-Music.jpg', 
	   :price => 4.99)

	#Product.create(:title => ' ', :description => %{<p></p>}, :image_url => '', :price => 45.99)

	#Product.create(:title => ' ', :description => %{<p></p>}, :image_url => '', :price => 22.99)

	#Product.create(:title => ' ', :description => %{<p></p>}, :image_url => '', :price => 99.99)

	#Product.create(:title => ' ', :description => %{<p></p>}, :image_url => '', :price => 1.99)

	#Product.create(:title => ' ', :description => %{<p></p>}, :image_url => '', :price => 2.99)

	#Product.create(:title => ' ', :description => %{<p></p>}, :image_url => '', :price => 0.99)

  end

  def self.down
	Product.delete_all
  end
end
