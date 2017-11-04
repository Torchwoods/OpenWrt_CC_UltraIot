#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

static int helloOpenWrt_init(void)
{
	printk("helloOpenWrt installed\n");
	return 0;
}

static void helloOpenWrt_exit(void)
{
	printk("helloOpenWrt uninstalled\n");
}

module_init(helloOpenWrt_init);
module_exit(helloOpenWrt_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("UltraIot");

