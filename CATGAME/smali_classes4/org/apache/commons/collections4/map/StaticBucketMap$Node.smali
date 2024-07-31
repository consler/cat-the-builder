.class final Lorg/apache/commons/collections4/map/StaticBucketMap$Node;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections4/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 455
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/map/StaticBucketMap$1;

    .line 455
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 478
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 479
    return v0

    .line 481
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 482
    return v2

    .line 485
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 486
    .local v1, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 487
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    .line 486
    :goto_2
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 472
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 472
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 494
    .local v0, "retVal":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 495
    return-object v0
.end method
