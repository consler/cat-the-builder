.class public interface abstract Lorg/apache/commons/beanutils/IntrospectionContext;
.super Ljava/lang/Object;
.source "IntrospectionContext.java"


# virtual methods
.method public abstract addPropertyDescriptor(Ljava/beans/PropertyDescriptor;)V
.end method

.method public abstract addPropertyDescriptors([Ljava/beans/PropertyDescriptor;)V
.end method

.method public abstract getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
.end method

.method public abstract getTargetClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract hasProperty(Ljava/lang/String;)Z
.end method

.method public abstract propertyNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePropertyDescriptor(Ljava/lang/String;)V
.end method
