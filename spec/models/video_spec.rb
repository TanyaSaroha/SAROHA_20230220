require 'rails_helper'

RSpec.describe Video, type: :model do
  describe "Validations" do
    context "creating video" do
      before(:each) do
        test_category = Category.create(name: "Education")
        file = fixture_file_upload('test.mp4')
        @video = Video.create(title: "New Video", category: test_category, file: file)
      end

      it "valid attributes" do
        expect(@video).to be_valid
      end

      it "title must be present" do
        @video.title = nil
        expect(@video).to be_invalid
        expect(@video.errors[:title]).to be_present
      end

      it "Must have a Category" do
        expect(@video).to be_valid
        expect(@video.category).to be_present
      end

      it "Must have a file" do
        @video.file = nil
        expect(@video).to be_invalid
        expect(@video.errors[:file]).to be_present
      end

      it "Must generate thumbnail file" do
        expect(@video).to be_valid
        expect(@video.file.thumb.url).to be_present
      end

      it "Must generate thumbnail file of size 64x64" do
        expect(@video).to be_valid
        expect(@video.file.thumb_64.url).to be_present
      end

      it "Must generate thumbnail file of size 128x128" do
        expect(@video).to be_valid
        expect(@video.file.thumb_128.url).to be_present
      end

    end
  end

end
