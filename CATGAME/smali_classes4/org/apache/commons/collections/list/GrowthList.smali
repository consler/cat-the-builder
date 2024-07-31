.class public Lorg/apache/commons/collections/list/GrowthList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "GrowthList.java"


# static fields
.field private static final serialVersionUID:J = -0x34ad8ed1e48L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 99
    return-void
.end method

.method public static decorate(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 70
    new-instance v0, Lorg/apache/commons/collections/list/GrowthList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/list/GrowthList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    .local v0, "size":I
    if-le p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    sub-int v2, p1, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 150
    .local v0, "size":I
    const/4 v1, 0x0

    .line 151
    .local v1, "result":Z
    if-le p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v2

    sub-int v3, p1, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    const/4 v1, 0x1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v2

    or-int/2addr v2, v1

    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    .local v0, "size":I
    if-lt p1, v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
