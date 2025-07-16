.class public Lorg/apache/commons/collections/collection/PredicatedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "PredicatedCollection.java"


# static fields
.field private static final serialVersionUID:J = -0x48fc5e4b3b8f598aL


# instance fields
.field protected final predicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_1

    .line 84
    iput-object p2, p0, Lorg/apache/commons/collections/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Predicate must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/commons/collections/collection/PredicatedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/PredicatedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/PredicatedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected validate(Ljava/lang/Object;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/apache/commons/collections/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cannot add Object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' - Predicate rejected it"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
