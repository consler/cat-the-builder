.class public Lorg/apache/commons/collections/iterators/ProxyListIterator;
.super Ljava/lang/Object;
.source "ProxyListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ProxyListIterator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method
