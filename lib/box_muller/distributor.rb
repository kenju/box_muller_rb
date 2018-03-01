module BoxMuller
  class Distributor
    def initialize
    end

    def distribute(total:, count:, variance: 10.0)
      tmp_total = total
      count.times.map { |i|
        if i == count - 1 # reaches the last item
          tmp_total
        else
          current = gaussian(mean: tmp_total / (count - i), variance: variance).first.round
          tmp_total = tmp_total - current
          current
        end
      }
    end

    private

    # credit to @antonakos
    # at https://stackoverflow.com/questions/5825680/code-to-generate-gaussian-normally-distributed-random-numbers-in-ruby
    def gaussian(mean:, variance:)
      r1 = rand()
      r2 = rand()

      theta = 2 * Math::PI * r2
      z1 = Math.sqrt(-2 * Math.log(1 - r1)) * Math.cos(theta)
      z2 = Math.sqrt(-2 * Math.log(1 - r1)) * Math.sin(theta)

      x = mean + variance * z1
      y = mean + variance * z2

      [x, y]
    end
  end
end
