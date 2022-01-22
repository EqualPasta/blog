FROM jekyll/jekyll:3.8.6
RUN gem update jekyll
CMD jekyll serve