.class Lorg/apache/commons/collections/FastTreeMap$EntrySet;
.super Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$EntrySet;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$EntrySet;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .locals 0

    .line 814
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
