.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 977
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator<TK;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<TK;*>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    .line 978
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 982
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator<TK;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
