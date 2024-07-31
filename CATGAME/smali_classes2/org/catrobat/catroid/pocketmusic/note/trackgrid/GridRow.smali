.class public Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
.super Ljava/lang/Object;
.source "GridRow.java"


# instance fields
.field private final gridRowPositions:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;>;"
        }
    .end annotation
.end field

.field private final noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Landroidx/collection/SparseArrayCompat;)V
    .locals 0
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/pocketmusic/note/NoteName;",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    .local p2, "gridRowPositions":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 38
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->gridRowPositions:Landroidx/collection/SparseArrayCompat;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 69
    .local v0, "reference":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    iget-object v2, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    return v1

    .line 73
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 74
    return v1

    .line 76
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 77
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 78
    return v1

    .line 80
    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 81
    return v1

    .line 83
    :cond_4
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 84
    return v1

    .line 86
    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 87
    return v1

    .line 76
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method public getGridRowPositions()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->gridRowPositions:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    return-object v0
.end method

.method public gridRowForTact(I)Ljava/util/List;
    .locals 1
    .param p1, "tactPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->gridRowPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 51
    const/16 v0, 0x15

    .line 52
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    .line 53
    .local v1, "primeWithGoodCollisionPrevention":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 55
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_0
    return v2
.end method
