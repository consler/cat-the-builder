.class public abstract Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.super Lcom/pdrogfer/mididroid/event/MidiEvent;
.source "MetaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;
    }
.end annotation


# static fields
.field public static final COPYRIGHT_NOTICE:I = 0x2

.field public static final CUE_POINT:I = 0x7

.field public static final END_OF_TRACK:I = 0x2f

.field public static final INSTRUMENT_NAME:I = 0x4

.field public static final KEY_SIGNATURE:I = 0x59

.field public static final LYRICS:I = 0x5

.field public static final MARKER:I = 0x6

.field public static final MIDI_CHANNEL_PREFIX:I = 0x20

.field public static final SEQUENCER_SPECIFIC:I = 0x7f

.field public static final SEQUENCE_NUMBER:I = 0x0

.field public static final SMPTE_OFFSET:I = 0x54

.field public static final TEMPO:I = 0x51

.field public static final TEXT_EVENT:I = 0x1

.field public static final TIME_SIGNATURE:I = 0x58

.field public static final TRACK_NAME:I = 0x3


# instance fields
.field protected mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

.field protected mType:I


# direct methods
.method protected constructor <init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pdrogfer/mididroid/event/MidiEvent;-><init>(JJ)V

    and-int/lit16 p1, p5, 0xff

    .line 35
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->mType:I

    .line 36
    iput-object p6, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    return-void
.end method

.method public static parseMetaEvent(JJLjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v1, p0

    move-wide v3, p2

    .line 56
    new-instance v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;-><init>(Ljava/io/InputStream;)V

    .line 59
    iget v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->type:I

    const/16 v6, 0x59

    const/16 v7, 0x58

    const/16 v8, 0x54

    const/16 v9, 0x51

    const/16 v10, 0x2f

    const/16 v11, 0x20

    if-eqz v0, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 85
    new-instance v6, Ljava/lang/String;

    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 87
    iget v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->type:I

    const/16 v7, 0x7f

    if-eq v0, v7, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v6, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v6

    .line 102
    :pswitch_0
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/CuePoint;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/CuePoint;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 100
    :pswitch_1
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/Marker;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/Marker;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 98
    :pswitch_2
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/Lyrics;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/Lyrics;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 96
    :pswitch_3
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/InstrumentName;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/InstrumentName;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 94
    :pswitch_4
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/TrackName;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/TrackName;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 92
    :pswitch_5
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/CopyrightNotice;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/CopyrightNotice;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 90
    :pswitch_6
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/Text;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/Text;-><init>(JJLjava/lang/String;)V

    return-object v7

    .line 104
    :cond_1
    new-instance v6, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;

    iget-object v5, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;-><init>(JJ[B)V

    return-object v6

    .line 110
    :cond_2
    iget v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->type:I

    if-eqz v0, :cond_9

    if-eq v0, v11, :cond_8

    if-eq v0, v10, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Completely broken in MetaEvent.parseMetaEvent()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_3
    invoke-static {p0, p1, p2, p3, v5}, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->parseKeySignature(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    .line 123
    :cond_4
    invoke-static {p0, p1, p2, p3, v5}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->parseTimeSignature(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    .line 121
    :cond_5
    invoke-static {p0, p1, p2, p3, v5}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->parseSmpteOffset(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    .line 119
    :cond_6
    invoke-static {p0, p1, p2, p3, v5}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->parseTempo(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    .line 117
    :cond_7
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/EndOfTrack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pdrogfer/mididroid/event/meta/EndOfTrack;-><init>(JJ)V

    return-object v0

    .line 115
    :cond_8
    invoke-static {p0, p1, p2, p3, v5}, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->parseMidiChannelPrefix(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    .line 113
    :cond_9
    invoke-static {p0, p1, p2, p3, v5}, Lcom/pdrogfer/mididroid/event/meta/SequenceNumber;->parseSequenceNumber(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract getEventSize()I
.end method

.method protected writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-super {p0, p1, v0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    const/16 v0, 0xff

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    return-void
.end method
