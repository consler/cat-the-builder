.class public Lcom/badlogic/gdx/math/CumulativeDistribution;
.super Ljava/lang/Object;
.source "CumulativeDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private values:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/CumulativeDistribution<",
            "TT;>.CumulativeValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    .line 29
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v2}, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;-><init>(Lcom/badlogic/gdx/math/CumulativeDistribution;Ljava/lang/Object;FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public add(Ljava/lang/Object;F)V
    .locals 3
    .param p2, "intervalSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;-><init>(Lcom/badlogic/gdx/math/CumulativeDistribution;Ljava/lang/Object;FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public clear()V
    .locals 1

    .line 131
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 132
    return-void
.end method

.method public generate()V
    .locals 3

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    const/4 v0, 0x0

    .line 44
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    add-float/2addr v0, v2

    .line 46
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v1

    iput v0, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public generateNormalized()V
    .locals 4

    .line 52
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    const/4 v0, 0x0

    .line 53
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    add-float/2addr v0, v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, "intervalSum":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 59
    iget-object v3, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v3, v3, v2

    iput v1, v3, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public generateUniform()V
    .locals 4

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 66
    .local v1, "freq":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getInterval(I)F
    .locals 1
    .param p1, "index"    # I

    .line 106
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    return v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setInterval(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "intervalSize"    # F

    .line 126
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    .line 127
    return-void
.end method

.method public setInterval(Ljava/lang/Object;F)V
    .locals 3
    .param p2, "intervalSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    .line 118
    .local v1, "value":Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>.CumulativeValue;"
    iget-object v2, v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 119
    iput p2, v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    .line 120
    return-void

    .line 118
    .end local v1    # "value":Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>.CumulativeValue;"
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 101
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;->value(F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public value(F)Ljava/lang/Object;
    .locals 5
    .param p1, "probability"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/badlogic/gdx/math/CumulativeDistribution;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "value":Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;, "Lcom/badlogic/gdx/math/CumulativeDistribution<TT;>.CumulativeValue;"
    iget-object v1, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "imax":I
    const/4 v2, 0x0

    .line 81
    .local v2, "imin":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 82
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 83
    .local v3, "imid":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v0, v4, v3

    .line 84
    iget v4, v0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 85
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 86
    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 87
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "imid":I
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    return-object v3
.end method
