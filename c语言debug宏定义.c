#if 1
#define DEBUGD(fmt...)  printk(fmt);
#else
#define DEBUGD(fmt...)  do {} while(0);
#endif
