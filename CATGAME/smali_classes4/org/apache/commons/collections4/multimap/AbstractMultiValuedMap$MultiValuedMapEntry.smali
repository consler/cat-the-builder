.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapEntry;
.super Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiValuedMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 654
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapEntry;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapEntry;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapEntry;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    .line 655
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapEntry;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
