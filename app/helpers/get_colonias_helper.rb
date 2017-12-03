module GetColoniasHelper
  def get_colonias
    path = "#{Rails.root}/app/assets/data/cdmx_colonias.xml"
    doc = Nokogiri::XML(File.read(path), nil, 'UTF-8').remove_namespaces!
    @colonias = doc.xpath("//table").map{ |item| item.at('d_asenta').text}
    #@colonias=doc.xpath("//table").map{ |item| {item.at('d_codigo').text => item.at('d_asenta').text}}
    # array= doc.css("table").map{ |cp| [cp.at('d_codigo'), cp.at('d_asenta')].map(&:text)}
    # @colonias = Hash.new{ |h,k| @colonias[k]=[] }
    # array.each { |k,v| @colonias[k] << v}
  end
end
