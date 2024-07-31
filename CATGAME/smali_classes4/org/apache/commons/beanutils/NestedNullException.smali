.class public Lorg/apache/commons/beanutils/NestedNullException;
.super Lorg/apache/commons/beanutils/BeanAccessLanguageException;
.source "NestedNullException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanAccessLanguageException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BeanAccessLanguageException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
