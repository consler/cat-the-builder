.class public Lorg/apache/commons/collections/list/NodeCachingLinkedList;
.super Lorg/apache/commons/collections/list/AbstractLinkedList;
.source "NodeCachingLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_MAXIMUM_CACHE_SIZE:I = 0x14

.field private static final serialVersionUID:J = 0x5fb9deb63bbc3f09L


# instance fields
.field protected transient cacheSize:I

.field protected transient firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected maximumCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;-><init>(I)V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maximumCacheSize"    # I

    .line 98
    invoke-direct {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>()V

    .line 99
    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 89
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 90
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 244
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 245
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 236
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->isCacheFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 174
    .local v0, "nextCachedNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 175
    iput-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 176
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 177
    iput-object p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 178
    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    .line 179
    return-void
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 191
    .local v0, "cachedNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    if-nez v0, :cond_0

    .line 192
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    return-object v1

    .line 194
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 195
    return-object v0
.end method

.method protected getMaximumCacheSize()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    return v0
.end method

.method protected getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 3

    .line 141
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    return-object v1

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 145
    .local v0, "cachedNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v2, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v2, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 146
    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 148
    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    .line 149
    return-object v0
.end method

.method protected isCacheFull()Z
    .locals 2

    .line 158
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeAllNodes()V
    .locals 4

    .line 220
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->size:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    iget v2, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    .local v0, "numberOfNodesToCache":I
    iget-object v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 222
    .local v1, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    const/4 v2, 0x0

    .local v2, "currentIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 223
    move-object v3, v1

    .line 224
    .local v3, "oldNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 225
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 222
    .end local v3    # "oldNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "currentIndex":I
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    .line 228
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 206
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 208
    return-void
.end method

.method protected setMaximumCacheSize(I)V
    .locals 0
    .param p1, "maximumCacheSize"    # I

    .line 119
    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

    .line 121
    return-void
.end method

.method protected shrinkCacheToMaximumSize()V
    .locals 2

    .line 128
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-le v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
