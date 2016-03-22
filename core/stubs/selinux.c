

#include <selinux/selinux.h>

/**
 * Ubuntu does not use selinux, stub here functions we do not need
 */

int is_selinux_enabled()
{
    return 0;
}

int selinux_android_restorecon(const char * file, unsigned int flags)
{
    return 0;
}

/**
 * Set the current security context to con.
 */
int setcon(const char * con)
 {
     return 0;
 }
