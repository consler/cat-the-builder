.class public Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
.super Ljava/lang/Object;
.source "GridRowPosition.java"


# instance fields
.field private columnStartIndex:I

.field private final noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;


# direct methods
.method public constructor <init>(ILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V
    .locals 0
    .param p1, "columnStartIndex"    # I
    .param p2, "noteLength"    # Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    .line 37
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 38
    return-void
.end method

.method public static getGridRowPositionIndexInList(Ljava/util/List;I)I
    .locals 2
    .param p1, "columnStartIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;I)I"
        }
    .end annotation

    .line 73
    .local p0, "gridRowPositions":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getColumnStartIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 75
    return v0

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    .line 68
    .local v0, "reference":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    iget v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    iget v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 69
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1
.end method

.method public getColumnStartIndex()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    return v0
.end method

.method public getNoteLength()Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    return-object v0
.end method

.method public getStartTicksInTrack()J
    .locals 4

    .line 53
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toTicks(I)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 58
    const/16 v0, 0x17

    .line 59
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    .line 60
    .local v1, "primeWithGoodCollisionPrevention":I
    mul-int v2, v1, v0

    iget v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    add-int/2addr v2, v3

    .line 61
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 62
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public setColumnStartIndex(I)V
    .locals 0
    .param p1, "columnStartIndex"    # I

    .line 49
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->columnStartIndex:I

    .line 50
    return-void
.end method
