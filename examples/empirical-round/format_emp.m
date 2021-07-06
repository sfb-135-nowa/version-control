function printed = format_emp(x, e)
  oom = find_oom(e)
  printed = 10 ^ oom * round(x / (10 ^ oom))
  if(printed == 0)
    printed = 0
  end
  if(sign(oom) == -1)
    fmt = sprintf('%%.%df', abs(oom))
    printed = sprintf(fmt, printed)
  else
    printed = sprintf('%d', printed)
  end
end
%!test
%! pkg load io
%! cases_csv = csv2cell("tests.csv")
%! cases = cell2struct(cases_csv(2:end,:).', cases_csv(1,:))
%! for i = 1:length(cases)
%!   assert(format_emp(cases(i).center, cases(i).se), cases(i).center_exp)
%! end
