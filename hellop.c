// SPDX-License-Identifier: GPL-2.0
/* hello_param.c */
#include <linux/init.h>
#include <linux/module.h>
MODULE_LICENSE("GPL");

static char *whom = "world";
module_param(whom, charp, 0644);
MODULE_PARM_DESC(whom, "Recipient of the hello message");

static char *time = "day";
module_param(time, charp, 0644);
MODULE_PARM_DESC(time, "Time");

static int __init hello_init(void)
{
	pr_alert("Hello, %s\n! What a beautiful %s\n!", whom, time);
	return 0;
}

static void __exit hello_exit(void)
{
	pr_alert("Goodbye, cruel %s\n.", whom);
}

module_init(hello_init);
module_exit(hello_exit);