#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.



CRN=18859 #enter your crn
DIR=~/Development/projects/bannerstalker/ #replace with path to directory where this is stored

curl --data "term_code=201410&term_subj=0&attr=0&levl=UG&status=0&search=Search" http://courselist.wm.edu/wmcourseschedule/courseinfo/searchresults | grep -A 11 $CRN > $DIR/out.txt