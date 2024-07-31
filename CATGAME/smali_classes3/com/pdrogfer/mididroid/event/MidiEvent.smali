.class public abstract Lcom/pdrogfer/mididroid/event/MidiEvent;
.super Ljava/lang/Object;
.source "MidiEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/pdrogfer/mididroid/event/MidiEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static sChannel:I

.field private static sId:I

.field private static sType:I


# instance fields
.field protected mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

.field protected mTick:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, -0x1

    sput v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 82
    sput v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    .line 83
    sput v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "tick"    # J
    .param p3, "delta"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    .line 34
    new-instance v0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    long-to-int v1, p3

    invoke-direct {v0, v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    .line 35
    return-void
.end method

.method public static final parseEvent(JJLjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/MidiEvent;
    .locals 17
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    move-object/from16 v7, p4

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->mark(I)V

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "reset":Z
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 91
    .local v8, "id":I
    invoke-static {v8}, Lcom/pdrogfer/mididroid/event/MidiEvent;->verifyIdentifier(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->reset()V

    .line 94
    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    .line 91
    :cond_0
    move v9, v0

    .line 97
    .end local v0    # "reset":Z
    .local v9, "reset":Z
    :goto_0
    sget v4, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    const/16 v0, 0x8

    if-lt v4, v0, :cond_1

    const/16 v0, 0xe

    if-gt v4, v0, :cond_1

    .line 99
    sget v5, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->parseChannelEvent(JJIILjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/ChannelEvent;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    sget v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 103
    invoke-static/range {p0 .. p4}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->parseMetaEvent(JJLjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    .line 105
    :cond_2
    const/16 v1, 0xf0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xf7

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to handle status byte, skipping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    if-eqz v9, :cond_4

    .line 117
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->read()I

    .line 121
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_5
    :goto_1
    new-instance v0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-direct {v0, v7}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v0, "size":Lcom/pdrogfer/mididroid/util/VariableLengthInt;
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    new-array v1, v1, [B

    .line 109
    .local v1, "data":[B
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    .line 110
    new-instance v2, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;

    sget v11, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    move-object v10, v2

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;-><init>(IJJ[B)V

    return-object v2
.end method

.method private static verifyIdentifier(I)Z
    .locals 4
    .param p0, "id"    # I

    .line 126
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 128
    shr-int/lit8 v0, p0, 0x4

    .line 129
    .local v0, "type":I
    and-int/lit8 v1, p0, 0xf

    .line 131
    .local v1, "channel":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    const/16 v2, 0xe

    if-gt v0, v2, :cond_0

    .line 133
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 134
    sput v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    .line 135
    sput v1, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    goto :goto_0

    .line 137
    :cond_0
    const/16 v2, 0xff

    const/4 v3, -0x1

    if-ne p0, v2, :cond_1

    .line 139
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 140
    sput v3, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    .line 141
    sput v3, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    goto :goto_0

    .line 143
    :cond_1
    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    .line 145
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 146
    sput v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    .line 147
    sput v3, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    .line 153
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 151
    :cond_2
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getDelta()J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected abstract getEventSize()I
.end method

.method public getSize()I
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getEventSize()I

    move-result v0

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getByteCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTick()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    return-wide v0
.end method

.method public requiresStatusByte(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z
    .locals 3
    .param p1, "prevEvent"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 61
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 63
    return v0

    .line 65
    :cond_0
    instance-of v1, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    if-eqz v1, :cond_1

    .line 67
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_2
    return v0
.end method

.method public setDelta(J)V
    .locals 2
    .param p1, "d"    # J

    .line 49
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 79
    return-void
.end method
