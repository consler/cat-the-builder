.class Lorg/apache/commons/beanutils/WeakFastHashMap$Values;
.super Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
.source "WeakFastHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WeakFastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/WeakFastHashMap<",
        "TK;TV;>.CollectionView<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V
    .locals 0

    .line 730
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$Values;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$Values;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/beanutils/WeakFastHashMap;
    .param p2, "x1"    # Lorg/apache/commons/beanutils/WeakFastHashMap$1;

    .line 730
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$Values;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap$Values;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 734
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$Values;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.Values;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 739
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$Values;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.Values;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
