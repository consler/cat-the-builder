.class Lorg/apache/commons/collections/FastHashMap$KeySet;
.super Lorg/apache/commons/collections/FastHashMap$CollectionView;
.source "FastHashMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/FastHashMap;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;-><init>(Lorg/apache/commons/collections/FastHashMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$KeySet;->this$0:Lorg/apache/commons/collections/FastHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections/FastHashMap;
    .param p2, "x1"    # Lorg/apache/commons/collections/FastHashMap$1;

    .line 674
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastHashMap$KeySet;-><init>(Lorg/apache/commons/collections/FastHashMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 677
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 681
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
