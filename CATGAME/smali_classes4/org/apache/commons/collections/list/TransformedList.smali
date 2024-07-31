.class public Lorg/apache/commons/collections/list/TransformedList;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xef2f55badb36155L


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .param p2, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/list/TransformedList;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/list/TransformedList;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 58
    new-instance v0, Lorg/apache/commons/collections/list/TransformedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 104
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 109
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getList()Ljava/util/List;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/TransformedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "i"    # I

    .line 118
    new-instance v0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;-><init>(Lorg/apache/commons/collections/list/TransformedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 122
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "sub":Ljava/util/List;
    new-instance v1, Lorg/apache/commons/collections/list/TransformedList;

    iget-object v2, p0, Lorg/apache/commons/collections/list/TransformedList;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method
