class CommentsController < ApplicationController


  # POST /comments
  # POST /comments.xml
  def create

    @comment = Comment.new(params[:comment]) 
    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@comment, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
        format.amf  { render :amf => @comment.post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
        format.amf  { render :amf => "ERROR" }
      end
    end
  end


  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
      format.amf  { head :ok }
    end
  end
end
