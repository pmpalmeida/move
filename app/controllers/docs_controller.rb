class DocsController < ApplicationController

  def show
    @doc = Doc.find(params[:id])
  end

  def update
    @doc = Doc.find(params[:id])
    @doc.update(doc_params)
    @pprofile = @doc.pprofile
    redirect_to pprofile_path(@pprofile)
  end

end


private


def doc_params
  params.require(:doc).permit(:photo_front, :photo_front_cache, :photo_back, :photo_back_cache)
end


