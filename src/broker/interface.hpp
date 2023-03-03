#ifndef INTERFACE_HPP
#define INTERFACE_HPP

#include <string>

namespace livermore
{

typedef unsigned int event_t;
typedef void(event_cb*)();

class OrderI
{

};

class MarketDataI
{
public:
    virtual int Connect(const char* endpoint) = 0;
    virtual int DisConnect() = 0;
    virtual int Sub(const char* topic[], int count) = 0;
    virtual int UnSub(const char* topic[], int count)  = 0;
    virtual int AddEvent(event_t event, event_cb fn) = 0;
};

class TraderI
{
public:
    virtual int Connect(const char* endpoint) = 0;
    virtual int DisConnect() = 0;
    virtual int AddOrder(const OrderI& order) = 0;
    virtual int CancelOrder(const OrderI& order) = 0;
    virtual int AddEvent(event_t event, event_cb fn) = 0;
};

}

#endif