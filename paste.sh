Sample Input:
Albany, N.Y.
Albuquerque, N.M.
Anchorage, Alaska
Asheville, N.C.
Atlanta, Ga.
Atlantic City, N.J.
Austin, Texas
Baltimore, Md.
Baton Rouge, La.
Billings, Mont.
Birmingham, Ala.
Bismarck, N.D.
Boise, Idaho
Boston, Mass.
Bridgeport, Conn.

#Replace the newlines in the input with tabs as demonstrated in the sample.
paste -s

#Restructure the file in such a way, that every group of three consecutive rows are folded into one, and separated by tab.
paste - - - -d "\t"

#Replace the newlines in the input file with semicolons as demonstrated in the sample.
paste -s -d ";"

#Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.
paste - - - -d ";"
