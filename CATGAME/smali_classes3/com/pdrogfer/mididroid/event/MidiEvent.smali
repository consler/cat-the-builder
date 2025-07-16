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
.field private static sChannel:I = -0x1

.field private static sId:I = -0x1

.field private static sType:I = -0x1


# instance fields
.field protected mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

.field protected mTick:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    .line 34
    new-instance p1, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    long-to-int p2, p3

    invoke-direct {p1, p2}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    return-void
.end method

.method public static final parseEvent(JJLjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/MidiEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 90
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 91
    invoke-static {v1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->verifyIdentifier(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    sget v5, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    const/16 v1, 0x8

    if-lt v5, v1, :cond_1

    const/16 v1, 0xe

    if-gt v5, v1, :cond_1

    .line 99
    sget v6, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    move-wide v1, p0

    move-wide v3, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->parseChannelEvent(JJIILjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/ChannelEvent;

    move-result-object p0

    return-object p0

    .line 101
    :cond_1
    sget v1, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .line 103
    invoke-static {p0, p1, p2, p3, p4}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->parseMetaEvent(JJLjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0xf0

    if-eq v1, v2, :cond_5

    const/16 v2, 0xf7

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to handle status byte, skipping: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_5
    :goto_1
    new-instance v0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-direct {v0, p4}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    .line 108
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    new-array v7, v0, [B

    .line 109
    invoke-virtual {p4, v7}, Ljava/io/InputStream;->read([B)I

    .line 110
    new-instance p4, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;

    sget v2, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    move-object v1, p4

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;-><init>(IJJ[B)V

    return-object p4
.end method

.method private static verifyIdentifier(I)Z
    .locals 3

    .line 126
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v1, p0, 0xf

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

    :cond_0
    const/16 v1, 0xff

    const/4 v2, -0x1

    if-ne p0, v1, :cond_1

    .line 139
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 140
    sput v2, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    .line 141
    sput v2, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 145
    sput p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sId:I

    .line 146
    sput v0, Lcom/pdrogfer/mididroid/event/MidiEvent;->sType:I

    .line 147
    sput v2, Lcom/pdrogfer/mididroid/event/MidiEvent;->sChannel:I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
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
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    if-eqz v1, :cond_1

    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public setDelta(J)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object p2, p0, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {p2}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
