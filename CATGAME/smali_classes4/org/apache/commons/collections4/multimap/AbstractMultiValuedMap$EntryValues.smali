.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 618
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->size()I

    move-result v0

    return v0
.end method
