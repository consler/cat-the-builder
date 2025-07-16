.class public Lcom/pdrogfer/mididroid/MidiTrack;
.super Ljava/lang/Object;
.source "MidiTrack.java"


# static fields
.field public static final IDENTIFIER:[B

.field private static final VERBOSE:Z = false


# instance fields
.field private mClosed:Z

.field private mEndOfTrackDelta:J

.field private mEvents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mSizeNeedsRecalculating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/pdrogfer/mididroid/MidiTrack;->IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x54t
        0x72t
        0x6bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    .line 63
    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSizeNeedsRecalculating:Z

    .line 64
    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mClosed:Z

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEndOfTrackDelta:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 73
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 75
    sget-object v2, Lcom/pdrogfer/mididroid/MidiTrack;->IDENTIFIER:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Track identifier did not match MTrk!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 82
    invoke-static {v1, v3, v0}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    .line 84
    new-array v0, v0, [B

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 87
    invoke-direct {p0, v0}, Lcom/pdrogfer/mididroid/MidiTrack;->readTrackData([B)V

    return-void
.end method

.method public static createTempoTrack()Lcom/pdrogfer/mididroid/MidiTrack;
    .locals 2

    .line 51
    new-instance v0, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    .line 53
    new-instance v1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v1}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 54
    new-instance v1, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-direct {v1}, Lcom/pdrogfer/mididroid/event/meta/Tempo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    return-object v0
.end method

.method private readTrackData([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v1, 0x0

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    if-lez p1, :cond_2

    .line 98
    new-instance p1, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-direct {p1, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    .line 99
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 101
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4, v0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->parseEvent(JJLjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/MidiEvent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 104
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Event skipped!"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/pdrogfer/mididroid/event/meta/EndOfTrack;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEndOfTrackDelta:J

    goto :goto_1

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private recalculateSize()V
    .locals 6

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    .line 319
    iget-object v1, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 321
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 324
    iget v4, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v3, v2}, Lcom/pdrogfer/mididroid/event/MidiEvent;->requiresStatusByte(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    iget v2, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 335
    :cond_1
    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSizeNeedsRecalculating:Z

    return-void
.end method


# virtual methods
.method public closeTrack()V
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 300
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 302
    :goto_0
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/EndOfTrack;

    iget-wide v5, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEndOfTrackDelta:J

    add-long/2addr v3, v5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/pdrogfer/mididroid/event/meta/EndOfTrack;-><init>(JJ)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    return-void
.end method

.method public dumpEvents()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEndOfTrackDelta()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEndOfTrackDelta:J

    return-wide v0
.end method

.method public getEventCount()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getEvents()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getLengthInTicks()J
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 152
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSizeNeedsRecalculating:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/MidiTrack;->recalculateSize()V

    .line 141
    :cond_0
    iget v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    return v0
.end method

.method public insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mClosed:Z

    if-eqz v0, :cond_1

    .line 182
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Error: Cannot add an event to a closed track."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "java.util.TreeSet"

    .line 192
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "floor"

    new-array v4, v1, [Ljava/lang/Class;

    .line 193
    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "ceiling"

    new-array v5, v1, [Ljava/lang/Class;

    .line 194
    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 196
    iget-object v4, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pdrogfer/mididroid/event/MidiEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :try_start_1
    iget-object v4, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/event/MidiEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-object v3, v0

    .line 203
    :catch_1
    iget-object v2, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 209
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_0

    .line 219
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 220
    iput-boolean v1, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSizeNeedsRecalculating:Z

    if-eqz v3, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/pdrogfer/mididroid/event/MidiEvent;->setDelta(J)V

    goto :goto_2

    .line 230
    :cond_4
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/pdrogfer/mididroid/event/MidiEvent;->setDelta(J)V

    :goto_2
    if-eqz v0, :cond_5

    .line 236
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/pdrogfer/mididroid/event/MidiEvent;->setDelta(J)V

    .line 239
    :cond_5
    iget v2, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v2, Lcom/pdrogfer/mididroid/event/meta/EndOfTrack;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_6

    .line 247
    iput-boolean v1, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mClosed:Z

    goto :goto_3

    .line 245
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to insert EndOfTrack before an existing event. Use closeTrack() when finished with MidiTrack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    return-void
.end method

.method public insertNote(IIIJJ)V
    .locals 7

    .line 168
    new-instance v6, Lcom/pdrogfer/mididroid/event/NoteOn;

    move-object v0, v6

    move-wide v1, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/NoteOn;-><init>(JIII)V

    invoke-virtual {p0, v6}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 169
    new-instance p3, Lcom/pdrogfer/mididroid/event/NoteOff;

    add-long v1, p4, p6

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/NoteOff;-><init>(JIII)V

    invoke-virtual {p0, p3}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    return-void
.end method

.method public removeEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 256
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 260
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    if-eqz v3, :cond_4

    .line 285
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/pdrogfer/mididroid/event/MidiEvent;->setDelta(J)V

    goto :goto_2

    .line 289
    :cond_4
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pdrogfer/mididroid/event/MidiEvent;->setDelta(J)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public setEndOfTrackDelta(J)V
    .locals 0

    .line 162
    iput-wide p1, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEndOfTrackDelta:J

    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mClosed:Z

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/MidiTrack;->closeTrack()V

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSizeNeedsRecalculating:Z

    if-eqz v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/MidiTrack;->recalculateSize()V

    .line 350
    :cond_1
    sget-object v0, Lcom/pdrogfer/mididroid/MidiTrack;->IDENTIFIER:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 351
    iget v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mSize:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 353
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 356
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 364
    invoke-virtual {v2, v1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->requiresStatusByte(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z

    move-result v1

    invoke-virtual {v2, p1, v1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method
