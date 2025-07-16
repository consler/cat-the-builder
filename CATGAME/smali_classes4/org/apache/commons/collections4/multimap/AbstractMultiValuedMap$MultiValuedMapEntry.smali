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
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapEntry;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    .line 655
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 660
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
