.class Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 646
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 643
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 647
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    .line 648
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 677
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 680
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 682
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 688
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 686
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 678
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 696
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 702
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 694
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 652
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 661
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 662
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 658
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 667
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 673
    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 731
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 732
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 733
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 709
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 712
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 713
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 715
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    goto :goto_0

    .line 724
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid map index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    goto :goto_0

    .line 721
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    nop

    .line 726
    :goto_0
    return-object v0

    .line 710
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 737
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 740
    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
