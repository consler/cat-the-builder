.class final Lorg/apache/commons/beanutils/BeanUtilsBean$1;
.super Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
.source "BeanUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/BeanUtilsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
        "Lorg/apache/commons/beanutils/BeanUtilsBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean$1;->initialValue()Lorg/apache/commons/beanutils/BeanUtilsBean;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/commons/beanutils/BeanUtilsBean;
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/commons/beanutils/BeanUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    return-object v0
.end method
