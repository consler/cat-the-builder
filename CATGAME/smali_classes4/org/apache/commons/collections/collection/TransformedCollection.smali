.class public Lorg/apache/commons/collections/collection/TransformedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "TransformedCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x78a140f7a4730e9aL


# instance fields
.field protected final transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 80
    iput-object p2, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transformer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/commons/collections/collection/TransformedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/TransformedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/TransformedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected transform(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
