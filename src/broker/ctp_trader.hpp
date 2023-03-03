#ifndef CTP_TRADER_HPP
#define CTP_TRADER_HPP

#include "interface.hpp"
#include "ThostFtdcTraderApi.h"

namespace livermore
{

class Trader : public CThostFtdcTraderSpi, public TraderI
{
};

}

#endif