.class Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;
.super Ljava/lang/Object;
.source "BaseDynaBeanMapDecorator.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->key:Ljava/lang/Object;

    .line 354
    iput-object p2, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->value:Ljava/lang/Object;

    .line 355
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 358
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry<TK;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 359
    return v1

    .line 361
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 362
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_1
    nop

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 362
    :goto_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 374
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 368
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 377
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
