module RdNapToEtrs
  class Batch
    def trans2008(points)
      grid_files_dir = File.expand_path('../../../ext/rd_nap_to_etrs/', __FILE__)
      Dir.chdir grid_files_dir do
        _trans2008(points)
      end
      points
    end
  end
end
