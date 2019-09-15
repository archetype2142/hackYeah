class Category < ApplicationRecord
	CATEGORIES ||= { 
		"adventure": "https://warnercnr.colostate.edu/wp-content/uploads/sites/2/2017/04/shutterstock_428626417-1024x683.jpg",
	 	"business": "https://blog-assets.hootsuite.com/wp-content/uploads/2016/08/social-media-for-business-940x470.jpg",
	  "family": "http://www.revmichaelheath.com/wp-content/uploads/2017/06/banner-4.jpg",
	  "culture": "https://images.photowall.com/products/51328/london-canary-wharf-skyline.jpg?h=380&q=75",
	  "leisure": "http://www.travelleisuretips.com/wp-content/uploads/2018/01/6895321_orig.jpg",
	  "sports": "https://www.vergesport.com/media/3545/verge-sport-time-trial-cycling-custom-clothing.jpg?center=0.31620553359683795,0.516629711751663&mode=crop&width=2048&height=1080&rnd=132066297700000000&quality=100" 
	}
	
	has_many :sub_categories, dependent: :destroy
	belongs_to :user
end