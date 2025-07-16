.class public Lorg/apache/commons/collections/set/SynchronizedSet;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedSet.java"

# interfaces
.implements Ljava/util/Set;


# static fields
.field private static final serialVersionUID:J = -0x733f379b6f9da013L


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/commons/collections/set/SynchronizedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method protected getSet()Ljava/util/Set;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSet;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
