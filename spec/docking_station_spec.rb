
require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'release working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?).to eq true
  end

  describe '#dock' do
    it 'an instance of a bike docked' do
       bike = Bike.new
       expect(subject.dock(bike)).to eq [bike]
    end

    it 'docking station full return error' do
       bike = Bike.new
       20.times { subject.dock(bike) }
       expect {subject.dock(bike)}.to raise_error "Docking station full"
    end
  end

  it 'an instance of a bike docked' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq [bike]
  end

  it 'docking station can return a bike' do
    expect(subject).to respond_to :bike
  end

  describe '#release_bike' do
    it 'release_bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there is no bike avaliable' do
      expect { subject.release_bike }.to raise_error 'No bikes avaliable'
      #curly braces are used for procs (a block of code)
    end

  end

  end
