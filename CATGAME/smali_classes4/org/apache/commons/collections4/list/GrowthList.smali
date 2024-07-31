.class public Lorg/apache/commons/collections4/list/GrowthList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source "GrowthList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x34ad8ed1e48L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/list/GrowthList;, "Lorg/apache/commons/collections4/list/GrowthList<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/list/GrowthList;, "Lorg/apache/commons/collections4/list/GrowthList<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/list/GrowthList;, "Lorg/apache/commons/collections4/list/GrowthList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public static growthList(Ljava/util/List;)Lorg/apache/commons/collections4/list/GrowthList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/list/GrowthList<",
            "TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/GrowthList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/list/GrowthList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/list/GrowthList;, "Lorg/apache/commons/collections4/list/GrowthList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    .local v0, "size":I
    if-le p1, v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    sub-int v2, p1, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/list/GrowthList;, "Lorg/apache/commons/collections4/list/GrowthList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    .local v0, "size":I
    const/4 v1, 0x0

    .line 158
    .local v1, "result":Z
    if-le p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v2

    sub-int v3, p1, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    const/4 v1, 0x1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/list/GrowthList;, "Lorg/apache/commons/collections4/list/GrowthList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    .local v0, "size":I
    if-lt p1, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
