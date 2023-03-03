#ifndef CTP_MD_HPP
#define CTP_MD_HPP

#include <atomic>
#include <unordered_map>

#include "interface.hpp"
#include "ThostFtdcTraderApi.h"

namespace livermore
{

class MarketData : public CThostFtdcMdSpi, public MarketDataI
{
public:
    class Config
    {
    };

    enum Event : event_t {
        EVENT_CONNECTED,
        EVENT_DISCONNECTED,
        EVENT_HEARTBEAT_WARNING,
        EVENT_USER_LOGIN,
        EVENT_USER_LOGOUT,
        EVENT_SUB_MARKET_DATA_RSP,
        EVENT_UNSUB_MARKET_DATA_RSP,
        EVENT_SUB_QUOTE_RSP,
        EVENT_UNSUB_QUOTE_RSP,
        EVENT_DEPTH_MARKET_DATA_NTF,
        EVENT_QUOTE_NTF
    }

    MarketData(MarketData::Config conf);
    ~MarketData()
    {
        api_.Release();
    }

    int Connect(const char* endpoint)
    {
    }

    int DisConnect()
    {

    }

    int Sub(const char* topic[], int count)
    {

    }

    int UnSub(const char* topic[], int count)
    {

    }

    int AddEvent(event_t event, event_cb fn)
    {

    }

private:
    std::atomic_bool binit_ = false;
    CThostFtdcMdApi* api_;
    std::unordered_map<event_t, event_cb> m_event_;
};

}

#endif