.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySetIterator;
.super Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;
.source "AbstractReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceKeySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 901
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

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

    .line 906
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySetIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
