package ru.MyClass;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public aspect LoggerAspect {

    @Before("execution(!static * *(..))")
    public void dontLogDuplicates() {
        System.out.println("Message from LoggerAspect object");
       // return thisJoinPoint.proceed();
    }

}
