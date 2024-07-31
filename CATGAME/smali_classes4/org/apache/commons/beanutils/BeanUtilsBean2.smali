.class public Lorg/apache/commons/beanutils/BeanUtilsBean2;
.super Lorg/apache/commons/beanutils/BeanUtilsBean;
.source "BeanUtilsBean2.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/commons/beanutils/ConvertUtilsBean2;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean2;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean2;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
