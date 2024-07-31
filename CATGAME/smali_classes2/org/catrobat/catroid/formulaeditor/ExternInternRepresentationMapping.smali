.class public Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;
.super Ljava/lang/Object;
.source "ExternInternRepresentationMapping.java"


# static fields
.field public static final MAPPING_NOT_FOUND:I = -0x80000000


# instance fields
.field private externInternMapping:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private externStringLength:I

.field private internExternMapping:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lorg/catrobat/catroid/formulaeditor/ExternToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externStringLength:I

    .line 37
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    .line 38
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->internExternMapping:Landroidx/collection/SparseArrayCompat;

    .line 39
    return-void
.end method

.method private searchDown(Landroidx/collection/SparseArrayCompat;I)I
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 112
    .local p1, "mapping":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/lang/Integer;>;"
    move v0, p2

    .local v0, "searchIndex":I
    :goto_0
    const/high16 v1, -0x80000000

    if-ltz v0, :cond_1

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 114
    invoke-virtual {p1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 117
    .end local v0    # "searchIndex":I
    :cond_1
    return v1
.end method

.method private searchUp(Landroidx/collection/SparseArrayCompat;I)I
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 121
    .local p1, "mapping":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/lang/Integer;>;"
    move v0, p2

    .local v0, "searchIndex":I
    :goto_0
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externStringLength:I

    const/high16 v2, -0x80000000

    if-ge v0, v1, :cond_1

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "searchIndex":I
    :cond_1
    return v2
.end method


# virtual methods
.method public getExternTokenEndIndex(I)I
    .locals 2
    .param p1, "internIndex"    # I

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->internExternMapping:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/ExternToken;

    .line 69
    .local v0, "externToken":Lorg/catrobat/catroid/formulaeditor/ExternToken;
    if-nez v0, :cond_0

    .line 70
    const/high16 v1, -0x80000000

    return v1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/ExternToken;->getEndIndex()I

    move-result v1

    return v1
.end method

.method public getExternTokenStartIndex(I)I
    .locals 2
    .param p1, "internIndex"    # I

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->internExternMapping:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/ExternToken;

    .line 59
    .local v0, "externToken":Lorg/catrobat/catroid/formulaeditor/ExternToken;
    if-nez v0, :cond_0

    .line 60
    const/high16 v1, -0x80000000

    return v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/ExternToken;->getStartIndex()I

    move-result v1

    return v1
.end method

.method public getExternTokenStartOffset(II)I
    .locals 5
    .param p1, "externIndex"    # I
    .param p2, "internTokenOffsetTo"    # I

    .line 98
    move v0, p1

    .local v0, "searchIndex":I
    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_2

    .line 99
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 101
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2, p2}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartOffset(II)I

    move-result v2

    .line 102
    .local v2, "rightEdgeSelectionToken":I
    if-ne v2, v1, :cond_0

    .line 103
    sub-int v1, p1, v0

    return v1

    .line 105
    :cond_0
    sub-int v1, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 98
    .end local v2    # "rightEdgeSelectionToken":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    .end local v0    # "searchIndex":I
    :cond_2
    return v1
.end method

.method public getInternTokenByExternIndex(I)I
    .locals 5
    .param p1, "externIndex"    # I

    .line 78
    const/high16 v0, -0x80000000

    if-gez p1, :cond_0

    .line 79
    return v0

    .line 82
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->searchDown(Landroidx/collection/SparseArrayCompat;I)I

    move-result v1

    .line 83
    .local v1, "searchDownInternToken":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, "currentInternToken":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->searchUp(Landroidx/collection/SparseArrayCompat;I)I

    move-result v3

    .line 86
    .local v3, "searchUpInternToken":I
    if-eq v2, v0, :cond_1

    .line 87
    return v2

    .line 89
    :cond_1
    if-eq v1, v0, :cond_2

    if-eq v3, v0, :cond_2

    if-ne v1, v3, :cond_2

    .line 91
    return v1

    .line 94
    :cond_2
    return v0
.end method

.method public putMapping(III)V
    .locals 3
    .param p1, "externStringStartIndex"    # I
    .param p2, "externStringEndIndex"    # I
    .param p3, "internListIndex"    # I

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externInternMapping:Landroidx/collection/SparseArrayCompat;

    add-int/lit8 v1, p2, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 48
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/ExternToken;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/ExternToken;-><init>(II)V

    .line 49
    .local v0, "externToken":Lorg/catrobat/catroid/formulaeditor/ExternToken;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->internExternMapping:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p3, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 51
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externStringLength:I

    if-lt p2, v1, :cond_0

    .line 52
    iput p2, p0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->externStringLength:I

    .line 54
    :cond_0
    return-void
.end method
