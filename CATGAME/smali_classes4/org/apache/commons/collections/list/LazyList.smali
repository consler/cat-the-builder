.class public Lorg/apache/commons/collections/list/LazyList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "LazyList.java"


# static fields
.field private static final serialVersionUID:J = -0x17b569d9a565ab0eL


# instance fields
.field protected final factory:Lorg/apache/commons/collections/Factory;


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;
    .param p2, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 93
    if-eqz p2, :cond_0

    .line 96
    iput-object p2, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 80
    new-instance v0, Lorg/apache/commons/collections/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    .local v0, "size":I
    if-ge p1, v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 117
    iget-object v2, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v2}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v1

    .line 122
    :cond_0
    return-object v1

    .line 126
    .end local v1    # "object":Ljava/lang/Object;
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v1}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "sub":Ljava/util/List;
    new-instance v1, Lorg/apache/commons/collections/list/LazyList;

    iget-object v2, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V

    return-object v1
.end method
