.class public Lorg/apache/commons/collections/HashBag;
.super Lorg/apache/commons/collections/DefaultMapBag;
.source "HashBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;-><init>(Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1, "coll"    # Ljava/util/Collection;

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/collections/HashBag;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/HashBag;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method
