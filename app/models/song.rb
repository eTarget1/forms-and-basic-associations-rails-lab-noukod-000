class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def create
    Song.create(Song_params)
  end

  private

  def post_params
    params.require(:Song).permit(:category_id, :content)
  end

end
