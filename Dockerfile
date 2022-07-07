FROM photon:4.0

LABEL authors="tenthirtyam"

ENV TERM linux

WORKDIR /root

RUN echo "/usr/bin/pwsh" >> /etc/shells && \
    echo "/bin/pwsh" >> /etc/shells && \
    tdnf install -y wget tar icu powershell-7.2.0-3.ph4 git unzip tzdata && \
    pwsh -c "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted" && \
    pwsh -c "Install-Module -Name PSDesiredStateConfiguration" && \
    pwsh -c "Enable-ExperimentalFeature PSDesiredStateConfiguration.InvokeDscResource" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.PowerCLI" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.vSphere.SsoAdmin -RequiredVersion 1.3.8" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module PowerVCF -RequiredVersion 2.2.0" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module PowerValidatedSolutions -RequiredVersion 1.7.0" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.PowerManagement -RequiredVersion 1.0.0.1002" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.CloudFoundation.Reporting -RequiredVersion 1.0.0.1001" && \
    find / -name "net45" | xargs rm -rf && \
    echo '$ProgressPreference = "SilentlyContinue"' > /root/.config/powershell/Microsoft.PowerShell_profile.ps1 && \
    tdnf erase -y unzip && \
    tdnf clean all

CMD ["/bin/pwsh"]
