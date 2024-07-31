.class public Lorg/catrobat/catroid/pocketmusic/note/Track;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x67d9089487653253L


# instance fields
.field private events:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

.field private key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

.field private lastTick:J


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V
    .locals 2
    .param p1, "key"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
    .param p2, "instrument"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    .line 46
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->lastTick:J

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/Track;)V
    .locals 7
    .param p1, "track"    # Lorg/catrobat/catroid/pocketmusic/note/Track;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    .line 53
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 54
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    .line 55
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getLastTick()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->lastTick:J

    .line 57
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 58
    .local v1, "tick":J
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .local v3, "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 61
    invoke-virtual {p1, v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 62
    .local v5, "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    new-instance v6, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    invoke-direct {v6, v5}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v5    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    goto :goto_1

    .line 64
    .end local v1    # "tick":J
    .end local v3    # "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    :cond_0
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method private eventListAlreadyContainsNoteEventWithTick(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)Z
    .locals 4
    .param p1, "tick"    # J
    .param p3, "noteEvent"    # Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 97
    .local v1, "key":J
    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const/4 v3, 0x1

    return v3

    .line 95
    .end local v1    # "key":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V
    .locals 2
    .param p1, "tick"    # J
    .param p3, "noteEvent"    # Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    goto :goto_0

    .line 81
    .end local v0    # "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 82
    .restart local v0    # "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 85
    :goto_0
    invoke-virtual {p3}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    iput-wide p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->lastTick:J

    .line 89
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/pocketmusic/note/Track;->eventListAlreadyContainsNoteEventWithTick(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_2
    return-void
.end method

.method public empty()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    instance-of v1, p1, Lorg/catrobat/catroid/pocketmusic/note/Track;

    if-nez v1, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/note/Track;

    .line 172
    .local v1, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 173
    return v0

    .line 176
    :cond_1
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 177
    return v0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v2

    .line 181
    .local v2, "ownTrackTicks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v3

    .line 183
    .local v3, "otherTrackTicks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 185
    .local v5, "tick":J
    invoke-virtual {p0, v5, v6}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;

    move-result-object v7

    .line 186
    .local v7, "ownNoteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    invoke-virtual {v1, v5, v6}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;

    move-result-object v8

    .line 188
    .local v8, "otherNoteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 189
    return v0

    .line 191
    .end local v5    # "tick":J
    .end local v7    # "ownNoteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    .end local v8    # "otherNoteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    :cond_3
    goto :goto_0

    .line 192
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_5
    return v0

    .line 167
    .end local v1    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v2    # "ownTrackTicks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v3    # "otherTrackTicks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_6
    :goto_1
    return v0
.end method

.method public getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    return-object v0
.end method

.method public getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    return-object v0
.end method

.method public getLastTick()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->lastTick:J

    return-wide v0
.end method

.method public getNoteEventsForTick(J)Ljava/util/List;
    .locals 2
    .param p1, "tick"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    .local v0, "noteEvents":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/Track$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/pocketmusic/note/Track$1;-><init>(Lorg/catrobat/catroid/pocketmusic/note/Track;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    return-object v0
.end method

.method public getSortedTicks()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 125
    .local v0, "treeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getTotalTimeInMilliseconds()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->lastTick:J

    invoke-static {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->tickToMilliseconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 155
    const/16 v0, 0x1f

    .line 156
    .local v0, "primeWithGoodCollisionPrevention":I
    const/16 v1, 0x12

    .line 157
    .local v1, "hashCode":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 158
    .end local v1    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v1, v0, v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 159
    .end local v2    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    .end local v1    # "hashCode":I
    .restart local v2    # "hashCode":I
    mul-int v1, v0, v2

    iget-wide v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->lastTick:J

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 161
    .end local v2    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 6

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 135
    .local v2, "sortedTick":Ljava/lang/Long;
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->events:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 136
    .end local v2    # "sortedTick":Ljava/lang/Long;
    goto :goto_0

    .line 138
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Track] instrument="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
