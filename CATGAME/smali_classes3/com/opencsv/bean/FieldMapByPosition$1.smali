.class Lcom/opencsv/bean/FieldMapByPosition$1;
.super Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.source "FieldMapByPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opencsv/bean/FieldMapByPosition;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/LazyIteratorChain<",
        "Lcom/opencsv/bean/FieldMapByPositionEntry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/opencsv/bean/FieldMapByPosition;


# direct methods
.method constructor <init>(Lcom/opencsv/bean/FieldMapByPosition;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    return-void
.end method

.method static synthetic lambda$nextIterator$0(Ljava/util/Map$Entry;)Lcom/opencsv/bean/FieldMapByPositionEntry;
    .locals 2

    .line 162
    new-instance v0, Lcom/opencsv/bean/FieldMapByPositionEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opencsv/bean/BeanField;

    invoke-direct {v0, v1, p0}, Lcom/opencsv/bean/FieldMapByPositionEntry;-><init>(ILcom/opencsv/bean/BeanField;)V

    return-object v0
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Lcom/opencsv/bean/FieldMapByPositionEntry<",
            "TT;>;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/PositionToBeanField;

    invoke-virtual {p1}, Lcom/opencsv/bean/PositionToBeanField;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 160
    new-instance p1, Lorg/apache/commons/collections4/iterators/TransformIterator;

    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->simpleMap:Ljava/util/SortedMap;

    .line 161
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/FieldMapByPosition$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/opencsv/bean/FieldMapByPosition$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/collections4/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
