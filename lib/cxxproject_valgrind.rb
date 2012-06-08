class Valgrind
  def self.available?
    return system 'which valgrind'
  end

  def initialize(toRake, building_blocks, log)
    log.error('valgrind am start')
    if not Valgrind.available?
      log.error('you should install valgrind or disable the valgrind plugin')
      return
    else
      log.error('Valgrind ist super')
      toRake.create_filter_task_with_namespace(:valgrind)
    end

    building_blocks.each_value.to_a.select do |bb|
      bb.is_a? Cxxproject::Executable
    end.each do |bb|
      name = bb.name
      executable = bb.get_task_name
      namespace 'valgrind' do
        desc "run executable #{executable} with valgrind"
        res = task name => executable do |t|
          sh "valgrind #{executable}"
        end
        res.type = Rake::Task::RUN
        res
      end
    end
  end
end
