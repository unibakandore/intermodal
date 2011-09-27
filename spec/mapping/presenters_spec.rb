require 'spec_helper'

describe Intermodal::Mapping::Presenter do
  include SpecHelpers::ClassBuilder
  include SpecHelpers::Application

  describe '.call' do
    subject { presenter.call(resource) }
    let(:resource) { item }

    context 'with pass-through mappings' do
      let(:presenter) do
        define_class :TestPresenter, Intermodal::Mapping::Presenter do
          presents :name
          presents :description
        end
      end

      it 'should present explicitly whitelisted fields' do
        should include(:name)
      end

      it 'should pass through value without transformation' do
        subject[:name].should eql(resource.name)
      end

      it 'should present all declared fields regardless of value' do
        should include(:description)
        subject[:description].should be_nil
      end
    end

    context 'with nested mappings' do
      let(:presenter) do
        define_class :TestPresenter, Intermodal::Mapping::Presenter do

          # Use this to create nested presentation
          presents :metadata, :as => [ :name, :description ]
        end
      end

      let(:resource) { Item.make(:name => name, :description => description) }
      let(:name) { 'Weird Eureka Thing' }
      let(:description) { 'Makes Eureka Go Boom!' }

      it 'should merge fields into a single hash of fields' do
        should include(:metadata)
        subject[:metadata].should include(:name)
        subject[:metadata].should include(:description)
      end

      it 'should merge fields without transforming its value' do
        subject[:metadata][:name].should eql(name)
        subject[:metadata][:description].should eql(description)
      end

      # Unless you've explicitly declared the merged fields, it should
      # not present it.
      it 'should not present undeclared fields' do
        should_not include(:name)
        should_not include(:description)
      end
    end
  end
end
