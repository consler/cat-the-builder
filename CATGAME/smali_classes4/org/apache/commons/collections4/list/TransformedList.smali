.class public Lorg/apache/commons/collections4/list/TransformedList;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source "TransformedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xef2f55badb36155L


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TransformedList;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TransformedList;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static transformedList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/list/TransformedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/list/TransformedList<",
            "TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/TransformedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    .line 83
    .local v0, "decorated":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 86
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 87
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 88
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TransformedList;->decorated()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-object v0
.end method

.method public static transformingList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/list/TransformedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/list/TransformedList<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/TransformedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/TransformedList;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TransformedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;-><init>(Lorg/apache/commons/collections4/list/TransformedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/apache/commons/collections4/list/TransformedList;, "Lorg/apache/commons/collections4/list/TransformedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/list/TransformedList;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TransformedList;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method
