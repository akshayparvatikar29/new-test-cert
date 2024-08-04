control 'file-test' do
  impact 1.0
  title 'Check Certificate'
  desc 'Check for the version'
  describe x509_certificate(filepath: '/home/ec2-user/certificates/oldcert.crt') do
    its('validity_in_days') { should be > 30 }
  end
end
