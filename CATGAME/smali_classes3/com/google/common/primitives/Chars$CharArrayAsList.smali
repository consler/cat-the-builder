.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[C

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([C)V
    .locals 2
    .param p1, "array"    # [C

    .line 517
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    .line 518
    return-void
.end method

.method constructor <init>([CII)V
    .locals 0
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 520
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    .line 522
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .line 523
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    .line 524
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 545
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    .line 546
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 594
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 595
    return v0

    .line 597
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v1, :cond_4

    .line 598
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 599
    .local v1, "that":Lcom/google/common/primitives/Chars$CharArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v2

    .line 600
    .local v2, "size":I
    invoke-virtual {v1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 601
    return v4

    .line 603
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 604
    iget-object v5, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v6, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v6, v3

    aget-char v5, v5, v6

    iget-object v6, v1, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v7, v1, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v7, v3

    aget-char v6, v6, v7

    if-eq v5, v6, :cond_2

    .line 605
    return v4

    .line 603
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 610
    .end local v1    # "that":Lcom/google/common/primitives/Chars$CharArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Character;
    .locals 2
    .param p1, "index"    # I

    .line 538
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 539
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 509
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->get(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 615
    const/4 v0, 0x1

    .line 616
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 617
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Lcom/google/common/primitives/Chars;->hashCode(C)I

    move-result v3

    add-int v0, v2, v3

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 552
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    .line 554
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 555
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 558
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 564
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$100([CCII)I

    move-result v0

    .line 566
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 567
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 570
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public set(ILjava/lang/Character;)Ljava/lang/Character;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Character;

    .line 575
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 576
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int v2, v1, p1

    aget-char v2, v0, v2

    .line 578
    .local v2, "oldValue":C
    add-int/2addr v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    aput-char v3, v0, v1

    .line 579
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 509
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 528
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 585
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 586
    if-ne p1, p2, :cond_0

    .line 587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 589
    :cond_0
    new-instance v1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int v4, v3, p1

    add-int/2addr v3, p2

    invoke-direct {v1, v2, v4, v3}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    return-object v1
.end method

.method toCharArray()[C
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 625
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 627
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
