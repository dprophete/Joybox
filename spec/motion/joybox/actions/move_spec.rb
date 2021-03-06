describe Joybox::Actions::Move do
  behaves_like "Action Sprite"

  it "should move the sprite by position" do
    @sprite.run_action Move.by position: [15, 15]
    @sprite.position.should == CGPointMake(5, 5)

    wait 0.2 do
      @sprite.position.should.not == CGPointMake(5, 5)
      @sprite.position.x.should.not.be.close 20, 0.1
      @sprite.position.y.should.not.be.close 20, 0.1
    end

    wait 0.4 do
      @sprite.position.should.not == CGPointMake(5, 5)
      @sprite.position.x.should.be.close 20, 0.1
      @sprite.position.y.should.be.close 20, 0.1
    end
  end

  it "should move the sprite to position" do
    @sprite.run_action Move.to position: [10, 10]
    @sprite.position.should == CGPointMake(5, 5)

    wait 0.2 do
      @sprite.position.should.not == CGPointMake(5, 5)
      @sprite.position.x.should.not.be.close 10, 0.1
      @sprite.position.y.should.not.be.close 10, 0.1
    end

    wait 0.4 do
      @sprite.position.should.not == CGPointMake(5, 5)
      @sprite.position.x.should.be.close 10, 0.1
      @sprite.position.y.should.be.close 10, 0.1
    end
  end
end