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

    const/16 v0, 0x14

    .line 76
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>()V

    .line 96
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    const/16 p1, 0x14

    .line 86
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

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
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->isCacheFull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    .line 171
    iput-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 172
    iput-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 173
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 175
    iget p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    return-void
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getMaximumCacheSize()I
    .locals 1

    .line 107
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
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 142
    iget-object v2, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 143
    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 145
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    return-object v0
.end method

.method protected isCacheFull()Z
    .locals 2

    .line 155
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
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    iget v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 220
    iget-object v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 223
    iget-object v3, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 224
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    .line 226
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeAllNodes()V

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
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected setMaximumCacheSize(I)V
    .locals 0

    .line 116
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

    return-void
.end method

.method protected shrinkCacheToMaximumSize()V
    .locals 2

    .line 125
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-le v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_0
    return-void
.end method
