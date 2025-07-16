.class public Lorg/apache/commons/collections4/multiset/HashMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.source "HashMultiSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337952L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/HashMultiSet;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/HashMultiSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multiset/HashMultiSet;->setMap(Ljava/util/Map;)V

    .line 82
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 69
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
