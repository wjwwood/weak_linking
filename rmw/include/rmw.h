#pragma once

#ifdef _WIN32
# ifdef RMW_BUILD_DLL
#  define RMW_PUBLIC __declspec(dllexport)
# else
#  define RMW_PUBLIC __declspec(dllimport)
# endif
#else
# define RMW_PUBLIC
#endif

typedef struct RMW_PUBLIC rmw_t
{
  int data;
} rmw_t;

RMW_PUBLIC rmw_t foo();
