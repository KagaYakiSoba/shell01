grep -v '^#' /etc/passwd | awk 'NR % 2 == 0' | cut -d: -f1 | awk -v start="$FT_LINE1" -v end="$FT_LINE2" 'NR >= start && NR <= end' | rev | sort -r | paste -sd, - | sed 's/, $/./'


