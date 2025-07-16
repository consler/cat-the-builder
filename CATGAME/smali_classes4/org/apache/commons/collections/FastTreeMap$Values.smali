.class Lorg/apache/commons/collections/FastTreeMap$Values;
.super Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.source "FastTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$Values;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$Values;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .locals 0

    .line 800
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    .line 804
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
