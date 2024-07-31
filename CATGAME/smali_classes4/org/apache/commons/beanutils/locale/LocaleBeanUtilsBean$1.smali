.class final Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;
.super Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
.source "LocaleBeanUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
        "Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;->initialValue()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
    .locals 1

    .line 58
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;-><init>()V

    return-object v0
.end method
