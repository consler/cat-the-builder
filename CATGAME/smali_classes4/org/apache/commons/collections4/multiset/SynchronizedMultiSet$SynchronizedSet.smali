.class Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet$SynchronizedSet;
.super Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.source "SynchronizedMultiSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/SynchronizedMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
        "TT;>;",
        "Ljava/util/Set<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337965L


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method
