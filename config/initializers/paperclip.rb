Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-eu-west-1.amazonaws.com'
Paperclip.interpolates(:s3_eu_url) do |att, style|
  "#{att.s3_protocol}://s3-eu-west-1.amazonaws.com/#{att.bucket_name}/#{att.path(style)}"
end

Paperclip.interpolates :filename do |attachment, style|
  attachment.instance.attachment_file_name
end

