class GeometricObject  
     attr_accessor :color,:filled
    
    def initialize(renk, idolum)
     @color, @filled = renk, idolum

    end

    def to_s 
    "#{@color} #{@filled}"
    
    end

end

class Circle < GeometricObject 
    attr_accessor :yaricap

    def initialize(yaricap)
        @yaricap =  yaricap
    end

    def getArea  
        Math::PI * @yaricap**2
    end

    def getPerimeter 
        2 * Math::PI * @yaricap
    end

    def getDiameter 
        2*@yaricap
    end
    
end

class Rectangle < GeometricObject
     attr_accessor :genislik, :yukseklik 

     def initialize(genislik,yukseklik)
      @genislik, @yukseklik = genislik, yukseklik
     end

     def getArea 
         @genislik*@yukseklik
     end

     def getPerimeter 
       2*@genislik+@yukseklik
    end

end

class Test 
     g = GeometricObject.new("Mavi","Doldurulamaz")
     c = Circle.new(2)
     puts "Çemberin Özellikleri: #{g}"
     puts "Çemberin Alanı: #{c.getArea}"
     puts "Çemberin Çevresi: #{c.getPerimeter}"
     puts "Çemberin Çapı: #{c.getDiameter}"
     
     g1 = GeometricObject.new("Kırmızı","Doldurulamaz")
     r = Rectangle.new(5,6)
     puts "\nDikdörtgenin Özellikleri: #{g1}"
     puts "Dikdörtgenin Alanı: #{r.getArea}"
     puts "Dikdörtgenin Çevresi: #{r.getPerimeter}"
     
end

Test