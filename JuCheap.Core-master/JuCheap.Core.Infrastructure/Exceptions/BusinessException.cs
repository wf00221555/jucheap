﻿using System;

namespace JuCheap.Core.Infrastructure.Exceptions
{
    /// <summary>
    /// 业务提示信息异常
    /// </summary>
    public class BusinessException : Exception
    {
        public BusinessException() { }

        public BusinessException(string message) : base(message)
        {

        }

        public BusinessException(string message, Exception ex) : base(message, ex)
        {

        }
    }
}
