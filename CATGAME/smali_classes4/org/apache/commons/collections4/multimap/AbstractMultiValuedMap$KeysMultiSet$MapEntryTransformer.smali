.class final Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;
.super Ljava/lang/Object;
.source "AbstractMultiValuedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapEntryTransformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 592
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;->transform(Ljava/util/Map$Entry;)Lorg/apache/commons/collections4/MultiSet$Entry;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/util/Map$Entry;)Lorg/apache/commons/collections4/MultiSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 596
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer$1;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;Ljava/util/Map$Entry;)V

    return-object v0
.end method
