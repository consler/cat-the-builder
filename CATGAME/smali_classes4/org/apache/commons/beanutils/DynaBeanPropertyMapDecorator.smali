.class public Lorg/apache/commons/beanutils/DynaBeanPropertyMapDecorator;
.super Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.source "DynaBeanPropertyMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;)V
    .locals 0
    .param p1, "dynaBean"    # Lorg/apache/commons/beanutils/DynaBean;

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;Z)V
    .locals 0
    .param p1, "dynaBean"    # Lorg/apache/commons/beanutils/DynaBean;
    .param p2, "readOnly"    # Z

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;Z)V

    .line 76
    return-void
.end method


# virtual methods
.method protected bridge synthetic convertKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/DynaBeanPropertyMapDecorator;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convertKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 91
    return-object p1
.end method
