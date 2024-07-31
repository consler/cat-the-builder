.class public Lorg/apache/commons/collections4/iterators/NodeListIterator;
.super Ljava/lang/Object;
.source "NodeListIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private final nodeList:Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->index:I

    .line 48
    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->nodeList:Lorg/w3c/dom/NodeList;

    .line 52
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Node must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 2
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->index:I

    .line 62
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->nodeList:Lorg/w3c/dom/NodeList;

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NodeList must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->nodeList:Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->index:I

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/NodeListIterator;->next()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/w3c/dom/Node;
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->nodeList:Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->index:I

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->nodeList:Lorg/w3c/dom/NodeList;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->index:I

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "underlying nodeList has no more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method not supported for a NodeListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
