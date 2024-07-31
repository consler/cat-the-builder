.class public Lcom/badlogic/gdx/utils/QuickSelect;
.super Ljava/lang/Object;
.source "QuickSelect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private comp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private medianOfThreePivot(II)I
    .locals 5
    .param p1, "leftIdx"    # I
    .param p2, "rightIdx"    # I

    .line 67
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 68
    .local v1, "left":Ljava/lang/Object;, "TT;"
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    .line 69
    .local v2, "midIdx":I
    aget-object v3, v0, v2

    .line 70
    .local v3, "mid":Ljava/lang/Object;, "TT;"
    aget-object v0, v0, p2

    .line 74
    .local v0, "right":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    .line 76
    return v2

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 78
    return p2

    .line 80
    :cond_1
    return p1

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    .line 84
    return p1

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_4

    .line 86
    return p2

    .line 88
    :cond_4
    return v2
.end method

.method private partition(III)I
    .locals 5
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivot"    # I

    .line 36
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v0, v0, p3

    .line 37
    .local v0, "pivotValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    .line 38
    move v1, p1

    .line 39
    .local v1, "storage":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 40
    iget-object v3, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-interface {v3, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 41
    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    .line 46
    return v1
.end method

.method private recursiveSelect(III)I
    .locals 5
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "k"    # I

    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    if-ne p1, p2, :cond_0

    return p1

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/QuickSelect;->medianOfThreePivot(II)I

    move-result v0

    .line 52
    .local v0, "pivotIndex":I
    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/QuickSelect;->partition(III)I

    move-result v1

    .line 53
    .local v1, "pivotNewIndex":I
    sub-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    .line 55
    .local v2, "pivotDist":I
    if-ne v2, p3, :cond_1

    .line 56
    move v3, v1

    .local v3, "result":I
    goto :goto_0

    .line 57
    .end local v3    # "result":I
    :cond_1
    if-ge p3, v2, :cond_2

    .line 58
    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, p1, v3, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v3

    .restart local v3    # "result":I
    goto :goto_0

    .line 60
    .end local v3    # "result":I
    :cond_2
    add-int/lit8 v3, v1, 0x1

    sub-int v4, p3, v2

    invoke-direct {p0, v3, p2, v4}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v3

    .line 62
    .restart local v3    # "result":I
    :goto_0
    return v3
.end method

.method private swap(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 95
    .local v1, "tmp":Ljava/lang/Object;, "TT;"
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 96
    aput-object v1, v0, p2

    .line 97
    return-void
.end method


# virtual methods
.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .locals 2
    .param p3, "n"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)I"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    .line 32
    add-int/lit8 v0, p4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v0

    return v0
.end method
