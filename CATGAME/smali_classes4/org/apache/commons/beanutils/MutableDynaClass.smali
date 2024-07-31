.class public interface abstract Lorg/apache/commons/beanutils/MutableDynaClass;
.super Ljava/lang/Object;
.source "MutableDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;


# virtual methods
.method public abstract add(Ljava/lang/String;)V
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation
.end method

.method public abstract isRestricted()Z
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract setRestricted(Z)V
.end method
