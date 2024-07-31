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
    .param p1, "this$0"    # Lcom/opencsv/bean/FieldMapByPosition;

    .line 152
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition$1;, "Lcom/opencsv/bean/FieldMapByPosition$1;"
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    return-void
.end method

.method static synthetic lambda$nextIterator$0(Ljava/util/Map$Entry;)Lcom/opencsv/bean/FieldMapByPositionEntry;
    .locals 3
    .param p0, "input"    # Ljava/util/Map$Entry;

    .line 162
    new-instance v0, Lcom/opencsv/bean/FieldMapByPositionEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/BeanField;

    invoke-direct {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByPositionEntry;-><init>(ILcom/opencsv/bean/BeanField;)V

    return-object v0
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Lcom/opencsv/bean/FieldMapByPositionEntry<",
            "TT;>;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition$1;, "Lcom/opencsv/bean/FieldMapByPosition$1;"
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/PositionToBeanField;

    invoke-virtual {v0}, Lcom/opencsv/bean/PositionToBeanField;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v0, v0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 160
    new-instance v0, Lorg/apache/commons/collections4/iterators/TransformIterator;

    iget-object v1, p0, Lcom/opencsv/bean/FieldMapByPosition$1;->this$0:Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v1, v1, Lcom/opencsv/bean/FieldMapByPosition;->simpleMap:Ljava/util/SortedMap;

    .line 161
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    sget-object v2, Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V

    .line 160
    return-object v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
