# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.empty?
        return self.max - self.min
    end

    def average
        return nil if self.empty?
        return self.sum / self.length.to_f
    end

    def median
        return nil if self.empty?
        middle = self.length / 2
        if self.length.odd?
            return self.sort[middle]
        else
            return (self.sort[middle] + self.sort[middle - 1]) / 2.0
        end
    end

    def counts
        count = Hash.new(0)
        self.each do |i|
            count[i] += 1
        end
        return count
    end

    def my_count
    end

end
