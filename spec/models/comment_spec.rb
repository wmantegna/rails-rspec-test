require 'rails_helper'

RSpec.describe Comment, type: :model do

  # testing function
  describe '.testing' do 
    it 'returns true' do
      expect(Comment.testing).to eq(true)
    end
  end

  # select function
  # describe '.build_a_new_one' do
  #   it 'works' do
  #     comment = Comment.build_a_new_one('name')
  #     expect(comment.name).to eq(Comment.last.name)
  #   end
  # end

  describe 'basic Creation tests' do
    it "has none to begin with" do
      expect(Comment.count).to eq 0
    end

    it "has one after adding one" do
      create(:comment, :no_text)
      expect(Comment.count).to eq 1
    end

    it "has none after one was created in a previous example" do
      expect(Comment.count).to eq 0
    end
  end

  describe '.ordered_by_date' do
    def comment(text, date)
      comment = Comment.new
      comment.text = text
      comment.date = date
      comment.save
      return comment
    end

    it "has correct ordering" do
      comment1 = create(:comment, :yesterday)
      comment2 = create(:comment, :today)
      
      orderedComments = Comment.ordered_by_date
      # orderedComments.each do |c|
      #   puts c.to_json
      # end

      expect(orderedComments.first).to eq(comment2)
      expect(orderedComments.second).to eq(comment1)
    end
  end


  # Template
  # ----------------------
  # describe '' do
  #   it '' do
  #   end
  # end
  # ----------------------
end
