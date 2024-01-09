FROM python:3.10

# Don't update to a higher version until this issue has been fixed: https://github.com/errata-ai/vale/issues/528
# Please keep version in sync with the version in .github/workflows/linting.yml for a consistent experience
ENV VALE_VERSION=2.29.2

WORKDIR /workspace

# Needed for Vale (rst2html) and reStructuredText (rstcheck)
RUN pip install rst2html rstcheck

RUN mkdir -p vale && cd vale && wget https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz && \
    tar -xf vale_${VALE_VERSION}_Linux_64-bit.tar.gz && cp /workspace/vale/vale /usr/local/bin/vale && cd ../

# /home/gitpod/.local/bin ensures that Python packages like rstcheck can be found
ENV PATH=/home/gitpod/.local/bin:$PATH

# Create the gitpod user. UID must be 33333. https://www.gitpod.io/docs/configure/workspaces/workspace-image#use-a-custom-dockerfile
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod
