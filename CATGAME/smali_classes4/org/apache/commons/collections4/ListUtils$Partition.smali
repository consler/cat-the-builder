.class Lorg/apache/commons/collections4/ListUtils$Partition;
.super Ljava/util/AbstractList;
.source "ListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/ListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 700
    .local p0, "this":Lorg/apache/commons/collections4/ListUtils$Partition;, "Lorg/apache/commons/collections4/ListUtils$Partition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 701
    iput-object p1, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->list:Ljava/util/List;

    .line 702
    iput p2, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->size:I

    .line 703
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILorg/apache/commons/collections4/ListUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/collections4/ListUtils$1;

    .line 696
    .local p0, "this":Lorg/apache/commons/collections4/ListUtils$Partition;, "Lorg/apache/commons/collections4/ListUtils$Partition<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/ListUtils$Partition;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 696
    .local p0, "this":Lorg/apache/commons/collections4/ListUtils$Partition;, "Lorg/apache/commons/collections4/ListUtils$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/ListUtils$Partition;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/List;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 707
    .local p0, "this":Lorg/apache/commons/collections4/ListUtils$Partition;, "Lorg/apache/commons/collections4/ListUtils$Partition<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/ListUtils$Partition;->size()I

    move-result v0

    .line 708
    .local v0, "listSize":I
    const-string v1, "Index "

    if-ltz p1, :cond_1

    .line 711
    if-ge p1, v0, :cond_0

    .line 715
    iget v1, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->size:I

    mul-int v2, p1, v1

    .line 716
    .local v2, "start":I
    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 717
    .local v1, "end":I
    iget-object v3, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 712
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must be less than size "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must not be negative"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 727
    .local p0, "this":Lorg/apache/commons/collections4/ListUtils$Partition;, "Lorg/apache/commons/collections4/ListUtils$Partition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 4

    .line 722
    .local p0, "this":Lorg/apache/commons/collections4/ListUtils$Partition;, "Lorg/apache/commons/collections4/ListUtils$Partition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/collections4/ListUtils$Partition;->size:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
