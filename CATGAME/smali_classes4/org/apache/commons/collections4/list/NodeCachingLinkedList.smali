.class public Lorg/apache/commons/collections4/list/NodeCachingLinkedList;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList;
.source "NodeCachingLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAXIMUM_CACHE_SIZE:I = 0x14

.field private static final serialVersionUID:J = 0x5fb9deb63bbc3f09L


# instance fields
.field private transient cacheSize:I

.field private transient firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private maximumCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;-><init>(I)V

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maximumCacheSize"    # I

    .line 95
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>()V

    .line 96
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 87
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

    .line 249
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 251
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

    .line 237
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 239
    return-void
.end method


# virtual methods
.method protected addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->isCacheFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 171
    .local v0, "nextCachedNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 172
    iput-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 173
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 175
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 176
    return-void
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 189
    .local v0, "cachedNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    .line 190
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    return-object v1

    .line 192
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 193
    return-object v0
.end method

.method protected getMaximumCacheSize()I
    .locals 1

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    return v0
.end method

.method protected getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    return-object v1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 142
    .local v0, "cachedNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v2, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 143
    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 145
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 146
    return-object v0
.end method

.method protected isCacheFull()Z
    .locals 2

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

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

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    iget v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 220
    .local v0, "numberOfNodesToCache":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 221
    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    const/4 v2, 0x0

    .local v2, "currentIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 222
    move-object v3, v1

    .line 223
    .local v3, "oldNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 224
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 221
    .end local v3    # "oldNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "currentIndex":I
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeAllNodes()V

    .line 227
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 206
    return-void
.end method

.method protected setMaximumCacheSize(I)V
    .locals 0
    .param p1, "maximumCacheSize"    # I

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

    .line 118
    return-void
.end method

.method protected shrinkCacheToMaximumSize()V
    .locals 2

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-le v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
