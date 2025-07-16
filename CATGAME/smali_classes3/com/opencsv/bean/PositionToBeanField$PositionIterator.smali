.class Lcom/opencsv/bean/PositionToBeanField$PositionIterator;
.super Ljava/lang/Object;
.source "PositionToBeanField.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/bean/PositionToBeanField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/opencsv/bean/FieldMapByPositionEntry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private currentRange:Lorg/apache/commons/lang3/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private rangeIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/opencsv/bean/PositionToBeanField;


# direct methods
.method constructor <init>(Lcom/opencsv/bean/PositionToBeanField;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->this$0:Lcom/opencsv/bean/PositionToBeanField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Lcom/opencsv/bean/PositionToBeanField;->access$000(Lcom/opencsv/bean/PositionToBeanField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 205
    iput p1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/opencsv/bean/PositionToBeanField;->access$000(Lcom/opencsv/bean/PositionToBeanField;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->rangeIterator:Ljava/util/ListIterator;

    .line 209
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/Range;

    iput-object p1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->currentRange:Lorg/apache/commons/lang3/Range;

    .line 210
    invoke-virtual {p1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 216
    iget v0, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/opencsv/bean/FieldMapByPositionEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/FieldMapByPositionEntry<",
            "TT;>;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    new-instance v0, Lcom/opencsv/bean/FieldMapByPositionEntry;

    iget v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    iget-object v2, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->this$0:Lcom/opencsv/bean/PositionToBeanField;

    iget-object v2, v2, Lcom/opencsv/bean/PositionToBeanField;->field:Lcom/opencsv/bean/BeanField;

    invoke-direct {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByPositionEntry;-><init>(ILcom/opencsv/bean/BeanField;)V

    .line 233
    iget v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    iget-object v2, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->currentRange:Lorg/apache/commons/lang3/Range;

    invoke-virtual {v2}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->currentRange:Lorg/apache/commons/lang3/Range;

    .line 234
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->rangeIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 236
    iput v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    goto :goto_1

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->rangeIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/Range;

    iput-object v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->currentRange:Lorg/apache/commons/lang3/Range;

    .line 240
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->position:I

    :goto_1
    return-object v0

    .line 224
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;->next()Lcom/opencsv/bean/FieldMapByPositionEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
