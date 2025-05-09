return {
  "xeluxee/competitest.nvim",
  dependencies = 'MunifTanjim/nui.nvim',
  opts = {
    compile_command = {
      cpp = { exec = 'g++', args = { '$(FNAME)', '-o', '$(FNOEXT)' } },
      go  = { exec = 'go', args = { 'build', '-o', 'bin/$(FNOEXT)', '$(FNAME)' } },
    },
    run_command = {
      cpp = { exec = './$(FNOEXT)' },
      go  = { exec = './bin/$(FNOEXT)' },
    },
  }
}


-- asdlkasd
