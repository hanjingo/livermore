#ifndef RECIVER_HPP
#define RECIVER_HPP

#include "error.hpp"

namespace livermore
{
namespace md
{

class Receiver
{
public:
    Receiver() {}
    ~Receiver() {}

    ErrorCode Init();
};

}
}

#endif