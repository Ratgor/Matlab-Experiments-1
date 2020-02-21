import sys, subprocess

bytes_output = subprocess.check_output(
    ['evex/for_redistribution_files_only/evex.exe', 'test'])
    
check_output_ok = bytes_output.decode().split() == ["'mai8n'", "'test'"]

print('evex tests {}'.format('OK' if check_output_ok else 'FAIL'))

sys.exit(0 if check_output_ok else 1)