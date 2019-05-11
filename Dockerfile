FROM swift:5.0
# the base image to use

# copy all files from folder root into image
COPY . .

# this will be run when building the image
RUN swift build

# this will be called when executing the image
CMD swift run
