#include <stdio.h>
#include <stdlib.h>

int main(){
  int a;
  printf("input:");
  scanf("%i",&a);
  if (a==0) exit (0);
  else if (a<0) exit (1);
  else if (a>0) exit (2);
  return (3);
}
