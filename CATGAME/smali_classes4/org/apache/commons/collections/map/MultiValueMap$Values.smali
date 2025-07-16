.class Lorg/apache/commons/collections/map/MultiValueMap$Values;
.super Ljava/util/AbstractCollection;
.source "MultiValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/MultiValueMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/MultiValueMap;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/MultiValueMap;Lorg/apache/commons/collections/map/MultiValueMap$1;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap$Values;-><init>(Lorg/apache/commons/collections/map/MultiValueMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/MultiValueMap;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5

    .line 376
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>()V

    .line 377
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    new-instance v2, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/MultiValueMap;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections/map/MultiValueMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/MultiValueMap;->totalSize()I

    move-result v0

    return v0
.end method
