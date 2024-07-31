.class public Lorg/apache/commons/collections4/list/PredicatedList;
.super Lorg/apache/commons/collections4/collection/PredicatedCollection;
.source "PredicatedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4f68c45b8354d91eL


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/PredicatedList;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/PredicatedList;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method public static predicatedList(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/list/PredicatedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/list/PredicatedList<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/PredicatedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)V

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

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/PredicatedList;->validate(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 137
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, "aColl":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/PredicatedList;->validate(Ljava/lang/Object;)V

    .line 143
    .end local v1    # "aColl":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

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

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/PredicatedList;->listIterator(I)Ljava/util/ListIterator;

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

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;-><init>(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/util/ListIterator;)V

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

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

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

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/PredicatedList;->validate(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

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

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/list/PredicatedList;, "Lorg/apache/commons/collections4/list/PredicatedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/list/PredicatedList;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/PredicatedList;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)V

    return-object v1
.end method
