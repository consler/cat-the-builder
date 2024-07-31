.class public Lcom/pdrogfer/mididroid/event/ChannelEvent;
.super Lcom/pdrogfer/mididroid/event/MidiEvent;
.source "ChannelEvent.java"


# static fields
.field public static final CHANNEL_AFTERTOUCH:I = 0xd

.field public static final CONTROLLER:I = 0xb

.field public static final NOTE_AFTERTOUCH:I = 0xa

.field public static final NOTE_OFF:I = 0x8

.field public static final NOTE_ON:I = 0x9

.field public static final PITCH_BEND:I = 0xe

.field public static final PROGRAM_CHANGE:I = 0xc

.field private static mOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mChannel:I

.field protected mType:I

.field protected mValue1:I

.field protected mValue2:I


# direct methods
.method protected constructor <init>(JIIII)V
    .locals 9
    .param p1, "tick"    # J
    .param p3, "type"    # I
    .param p4, "channel"    # I
    .param p5, "param1"    # I
    .param p6, "param2"    # I

    .line 35
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JJIIII)V

    .line 36
    return-void
.end method

.method protected constructor <init>(JJIIII)V
    .locals 1
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "type"    # I
    .param p6, "channel"    # I
    .param p7, "param1"    # I
    .param p8, "param2"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pdrogfer/mididroid/event/MidiEvent;-><init>(JJ)V

    .line 42
    and-int/lit8 v0, p5, 0xf

    iput v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    .line 43
    and-int/lit8 v0, p6, 0xf

    iput v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    .line 44
    and-int/lit16 v0, p7, 0xff

    iput v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue1:I

    .line 45
    and-int/lit16 v0, p8, 0xff

    iput v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue2:I

    .line 46
    return-void
.end method

.method private static buildOrderMap()V
    .locals 3

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    .line 197
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public static parseChannelEvent(JJIILjava/io/InputStream;)Lcom/pdrogfer/mididroid/event/ChannelEvent;
    .locals 13
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "type"    # I
    .param p5, "channel"    # I
    .param p6, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    move/from16 v9, p4

    invoke-virtual/range {p6 .. p6}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 165
    .local v10, "val1":I
    const/4 v0, 0x0

    .line 166
    .local v0, "val2":I
    const/16 v1, 0xc

    if-eq v9, v1, :cond_0

    const/16 v1, 0xd

    if-eq v9, v1, :cond_0

    .line 168
    invoke-virtual/range {p6 .. p6}, Ljava/io/InputStream;->read()I

    move-result v0

    move v11, v0

    goto :goto_0

    .line 171
    :cond_0
    move v11, v0

    .end local v0    # "val2":I
    .local v11, "val2":I
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 188
    new-instance v12, Lcom/pdrogfer/mididroid/event/ChannelEvent;

    move-object v0, v12

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v10

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JJIIII)V

    return-object v12

    .line 186
    :pswitch_0
    new-instance v8, Lcom/pdrogfer/mididroid/event/PitchBend;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/pdrogfer/mididroid/event/PitchBend;-><init>(JJIII)V

    return-object v8

    .line 184
    :pswitch_1
    new-instance v7, Lcom/pdrogfer/mididroid/event/ChannelAftertouch;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ChannelAftertouch;-><init>(JJII)V

    return-object v7

    .line 182
    :pswitch_2
    new-instance v7, Lcom/pdrogfer/mididroid/event/ProgramChange;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ProgramChange;-><init>(JJII)V

    return-object v7

    .line 180
    :pswitch_3
    new-instance v8, Lcom/pdrogfer/mididroid/event/Controller;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/pdrogfer/mididroid/event/Controller;-><init>(JJIII)V

    return-object v8

    .line 178
    :pswitch_4
    new-instance v8, Lcom/pdrogfer/mididroid/event/NoteAftertouch;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/pdrogfer/mididroid/event/NoteAftertouch;-><init>(JJIII)V

    return-object v8

    .line 176
    :pswitch_5
    new-instance v8, Lcom/pdrogfer/mididroid/event/NoteOn;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/pdrogfer/mididroid/event/NoteOn;-><init>(JJIII)V

    return-object v8

    .line 174
    :pswitch_6
    new-instance v8, Lcom/pdrogfer/mididroid/event/NoteOff;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p5

    move v6, v10

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/pdrogfer/mididroid/event/NoteOff;-><init>(JJIII)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x8
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
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7
    .param p1, "other"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 86
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 88
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    iget-object v3, p1, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 92
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    iget-object v3, p1, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 95
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/ChannelEvent;

    if-nez v0, :cond_4

    .line 97
    return v2

    .line 100
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;

    .line 101
    .local v0, "o":Lcom/pdrogfer/mididroid/event/ChannelEvent;
    iget v3, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->getType()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 103
    sget-object v3, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    if-nez v3, :cond_5

    .line 105
    invoke-static {}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->buildOrderMap()V

    .line 108
    :cond_5
    sget-object v3, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 109
    .local v3, "order1":I
    sget-object v4, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 111
    .local v4, "order2":I
    if-ge v3, v4, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1

    .line 113
    .end local v3    # "order1":I
    .end local v4    # "order2":I
    :cond_7
    iget v3, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue1:I

    iget v4, v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue1:I

    if-eq v3, v4, :cond_9

    .line 115
    if-ge v3, v4, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    return v1

    .line 117
    :cond_9
    iget v3, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue2:I

    iget v4, v0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue2:I

    if-eq v3, v4, :cond_b

    .line 119
    if-ge v3, v4, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    return v1

    .line 121
    :cond_b
    iget v3, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->getChannel()I

    move-result v4

    if-eq v3, v4, :cond_d

    .line 123
    iget v3, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->getChannel()I

    move-result v4

    if-ge v3, v4, :cond_c

    goto :goto_4

    :cond_c
    move v1, v2

    :goto_4
    return v1

    .line 125
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getChannel()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    return v0
.end method

.method protected getEventSize()I
    .locals 2

    .line 73
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 79
    const/4 v0, 0x3

    return v0

    .line 77
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    return v0
.end method

.method public requiresStatusByte(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z
    .locals 4
    .param p1, "prevEvent"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 131
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Lcom/pdrogfer/mididroid/event/ChannelEvent;

    if-nez v1, :cond_1

    .line 137
    return v0

    .line 140
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pdrogfer/mididroid/event/ChannelEvent;

    .line 141
    .local v1, "ce":Lcom/pdrogfer/mididroid/event/ChannelEvent;
    iget v2, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/event/ChannelEvent;->getChannel()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public setChannel(I)V
    .locals 1
    .param p1, "c"    # I

    .line 55
    if-gez p1, :cond_0

    .line 57
    const/4 p1, 0x0

    goto :goto_0

    .line 59
    :cond_0
    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 61
    const/16 p1, 0xf

    .line 63
    :cond_1
    :goto_0
    iput p1, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    .line 64
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2}, Lcom/pdrogfer/mididroid/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 149
    if-eqz p2, :cond_0

    .line 151
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    shl-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mChannel:I

    add-int/2addr v0, v1

    .line 152
    .local v0, "typeChannel":I
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 155
    .end local v0    # "typeChannel":I
    :cond_0
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue1:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 156
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 158
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelEvent;->mValue2:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 160
    :cond_1
    return-void
.end method
