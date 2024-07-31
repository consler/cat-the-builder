.class public interface abstract Lorg/apache/commons/beanutils/DynaClass;
.super Ljava/lang/Object;
.source "DynaClass.java"


# virtual methods
.method public abstract getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
.end method

.method public abstract getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method
