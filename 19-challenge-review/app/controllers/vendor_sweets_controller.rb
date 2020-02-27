class VendorSweetsController < ApplicationController

    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
        vendor_sweet = VendorSweet.create(vendor_sweet_params)

        if vendor_sweet.valid?
            redirect_to vendor_sweet.vendor
        else
            flash[:errors] = vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
