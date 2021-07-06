function oom = find_oom(e)
  # Only absolute value of e is needed
  e = abs(e)
  # Find 2nd significant digit of e
  signif2 = floor(log10(e)) - 1
  # Shift 1st two significant digits of e before decimal separator
  e_shifted = e / (10 ^ signif2)
  if(round(e_shifted) < 20)
    oom = signif2
  else
    oom = signif2 + 1
  end
end
%!test
%! pkg load io
%! cases_csv = csv2cell("tests.csv")
%! cases = cell2struct(cases_csv(2:end,:).', cases_csv(1,:))
%! for i = 1:length(cases)
%!   assert(find_oom(cases(i).se), cases(i).oom)
%! end
