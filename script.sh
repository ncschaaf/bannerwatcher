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


#run setup first and then place this script in a chronjob
CRN=18859 #REPLACE WITH YOUR CRN
DIR=~/Development/projects/bannerstalker #replace with the path to .


rm $DIR/diff.txt;

curl --data "term_code=201410&term_subj=0&attr=0&levl=UG&status=0&search=Search" http://courselist.wm.edu/wmcourseschedule/courseinfo/searchresults | grep -A 11 $CRN | diff - $DIR/out.txt > $DIR/diff.txt; 

if [ -s diff.txt ]; then 
    echo "different";
    python $DIR/mailUpdate.py
    $DIR/setup.sh
else
    echo "the same"
fi
