
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int help() {
  printf("usage: samp probability(0..1, default: 0.5)\n");
  return 1;
}

int main(int argc, char *argv[]) {
  char* line = NULL;
  size_t len = 0;
  double r = 0;
  double prob = 0.5;

  if (argc > 1) {
    if (!strcmp(argv[1], "--help")) return help();
    if (!strcmp(argv[1], "-h")) return help();
    sscanf(argv[1], "%lf", &prob);
  }

  srand(time(NULL));

  while (getline(&line, &len, stdin) != -1) {
    r = ((double) rand()) / RAND_MAX;
    if (r < prob) fputs(line, stdout);
  }

  free(line);
  return 0;
}
