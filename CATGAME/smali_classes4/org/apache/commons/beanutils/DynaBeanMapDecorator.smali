.class public Lorg/apache/commons/beanutils/DynaBeanMapDecorator;
.super Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.source "DynaBeanMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;)V
    .locals 0
    .param p1, "dynaBean"    # Lorg/apache/commons/beanutils/DynaBean;

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;Z)V
    .locals 0
    .param p1, "dynaBean"    # Lorg/apache/commons/beanutils/DynaBean;
    .param p2, "readOnly"    # Z

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;Z)V

    .line 84
    return-void
.end method


# virtual methods
.method protected convertKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 99
    return-object p1
.end method
