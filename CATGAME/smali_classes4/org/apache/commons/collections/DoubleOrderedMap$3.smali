.class Lorg/apache/commons/collections/DoubleOrderedMap$3;
.super Ljava/util/AbstractCollection;
.source "DoubleOrderedMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/DoubleOrderedMap$3;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$3;

    .line 344
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    .line 389
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 348
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$3$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$3$1;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$3;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v0

    .line 368
    .local v0, "oldnodeCount":I
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 378
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 384
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$3;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
