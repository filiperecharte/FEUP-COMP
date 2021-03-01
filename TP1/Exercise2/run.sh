if [ "$1" == "clean" ];
then
  rm *.class
  echo "Cleaned."
elif [ "$1" == "jjt" ] && [ -n "$2" ];
then
  jjtree "$2".jjt > /dev/null && javacc "$2".jj > /dev/null && javac *.java > /dev/null && java "$2"
elif [ "$1" == "jj" ] && [ -n "$2" ];
then
  javacc "$2".jj > /dev/null && javac *.java > /dev/null && java "$2"
elif [ "$1" == "run" ] && [ -n "$2" ];
then
  java "$2"
else
  echo "Invalid arguments."
  echo "Usage:"
  echo ". 'clean' - deletes all .class files"
  echo ". 'jjt' [NAME] - runs from .jjt file"
  echo ". 'jj' [NAME] - runs from .jj file"
  echo ". 'run' [NAME] - runs from the compiled java Executable"
fi
