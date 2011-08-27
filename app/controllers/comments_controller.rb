class CommentsController < ApplicationController

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article_comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end


  # POST /articles
  # POST /articles.xml
  def create
    #@comment = Comment.new(params[:article_id])
    @comment = Article.find(params[:article_id]).comments.create(params[:comment])

    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Article was successfully created.'
        format.html { redirect_to :back  }
        format.xml  { render :xml => @new_comment, :status => :created, :location => @new_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @new_comment.errors, :status => :unprocessable_entity }
      end
    end
  end
end
