.class public Lorg/apache/commons/collections4/list/FixedSizeList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source "FixedSizeList.java"

# interfaces
.implements Lorg/apache/commons/collections4/BoundedCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/BoundedCollection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1ec7f4f4c49e3affL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .line 48
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    return-object v0
.end method

.method public static fixedSizeList(Ljava/util/List;)Lorg/apache/commons/collections4/list/FixedSizeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/list/FixedSizeList<",
            "TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/FixedSizeList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/list/FixedSizeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static unsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
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

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 193
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;-><init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;-><init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 198
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->size()I

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->unsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/list/FixedSizeList;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/list/FixedSizeList;-><init>(Ljava/util/List;)V

    return-object v1
.end method
