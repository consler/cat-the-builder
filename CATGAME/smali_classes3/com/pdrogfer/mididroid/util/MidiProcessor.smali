.class public Lcom/pdrogfer/mididroid/util/MidiProcessor;
.super Ljava/lang/Object;
.source "MidiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;
    }
.end annotation


# static fields
.field private static final PROCESS_RATE_MS:I = 0x8


# instance fields
.field private mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

.field private mEventsToListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/util/MidiEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenersToEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/pdrogfer/mididroid/util/MidiEventListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mMPQN:I

.field private mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

.field private mMidiFile:Lcom/pdrogfer/mididroid/MidiFile;

.field private mMsElapsed:J

.field private mPPQ:I

.field private mRunning:Z

.field private mTicksElapsed:D


# direct methods
.method public constructor <init>(Lcom/pdrogfer/mididroid/MidiFile;)V
    .locals 3
    .param p1, "input"    # Lcom/pdrogfer/mididroid/MidiFile;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMidiFile:Lcom/pdrogfer/mididroid/MidiFile;

    .line 52
    const v0, 0x7a120

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMPQN:I

    .line 53
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/MidiFile;->getResolution()I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mPPQ:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/pdrogfer/mididroid/util/MetronomeTick;

    new-instance v1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v1}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    iget v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mPPQ:I

    invoke-direct {v0, v1, v2}, Lcom/pdrogfer/mididroid/util/MetronomeTick;-><init>(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;I)V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    .line 60
    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->reset()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/pdrogfer/mididroid/util/MidiProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/pdrogfer/mididroid/util/MidiProcessor;

    .line 29
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->process()V

    return-void
.end method

.method private process()V
    .locals 17

    .line 255
    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->onStart(Z)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 259
    .local v6, "lastMs":J
    const/4 v3, 0x0

    .line 261
    .local v3, "finished":Z
    :goto_1
    iget-boolean v0, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    if-eqz v0, :cond_9

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 265
    .local v8, "now":J
    sub-long v10, v8, v6

    .line 267
    .local v10, "msElapsed":J
    const-wide/16 v12, 0x8

    cmp-long v0, v10, v12

    if-gez v0, :cond_1

    .line 271
    sub-long/2addr v12, v10

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 276
    goto :goto_1

    .line 279
    :cond_1
    iget v0, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMPQN:I

    iget v12, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mPPQ:I

    invoke-static {v10, v11, v0, v12}, Lcom/pdrogfer/mididroid/util/MidiUtil;->msToTicks(JII)D

    move-result-wide v12

    .line 281
    .local v12, "ticksElapsed":D
    cmpg-double v0, v12, v4

    if-gez v0, :cond_2

    .line 283
    goto :goto_1

    .line 286
    :cond_2
    iget-object v0, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {v0, v12, v13}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->update(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {v1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 291
    :cond_3
    move-wide v6, v8

    .line 292
    iget-wide v14, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    add-long/2addr v14, v10

    iput-wide v14, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    .line 293
    iget-wide v14, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    add-double/2addr v14, v12

    iput-wide v14, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "more":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    iget-object v15, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    array-length v4, v15

    if-ge v14, v4, :cond_7

    .line 299
    aget-object v4, v15, v14

    .line 300
    .local v4, "queue":Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->hasMoreEvents()Z

    move-result v5

    if-nez v5, :cond_4

    .line 302
    move v15, v3

    goto :goto_4

    .line 305
    :cond_4
    move v15, v3

    .end local v3    # "finished":Z
    .local v15, "finished":Z
    iget-wide v2, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    invoke-virtual {v4, v2, v3}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->getNextEventsUpToTick(D)Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 308
    .local v5, "event":Lcom/pdrogfer/mididroid/event/MidiEvent;
    invoke-virtual {v1, v5}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 309
    .end local v5    # "event":Lcom/pdrogfer/mididroid/event/MidiEvent;
    goto :goto_3

    .line 311
    :cond_5
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->hasMoreEvents()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 313
    const/4 v0, 0x1

    .line 296
    .end local v2    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    .end local v4    # "queue":Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move v3, v15

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .end local v15    # "finished":Z
    .restart local v3    # "finished":Z
    :cond_7
    move v15, v3

    .line 317
    .end local v3    # "finished":Z
    .end local v14    # "i":I
    .restart local v15    # "finished":Z
    if-nez v0, :cond_8

    .line 319
    const/4 v3, 0x1

    .line 320
    .end local v15    # "finished":Z
    .restart local v3    # "finished":Z
    goto :goto_5

    .line 322
    .end local v0    # "more":Z
    .end local v3    # "finished":Z
    .end local v8    # "now":J
    .end local v10    # "msElapsed":J
    .end local v12    # "ticksElapsed":D
    .restart local v15    # "finished":Z
    :cond_8
    move v3, v15

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 261
    .end local v15    # "finished":Z
    .restart local v3    # "finished":Z
    :cond_9
    move v15, v3

    .line 324
    :goto_5
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    .line 325
    invoke-virtual {v1, v3}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->onStop(Z)V

    .line 326
    return-void
.end method

.method private sendOnEventForClass(Lcom/pdrogfer/mididroid/event/MidiEvent;Ljava/lang/Class;)V
    .locals 5
    .param p1, "event"    # Lcom/pdrogfer/mididroid/event/MidiEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p2, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 241
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    if-nez v0, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 248
    .local v2, "mel":Lcom/pdrogfer/mididroid/util/MidiEventListener;
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    invoke-interface {v2, p1, v3, v4}, Lcom/pdrogfer/mididroid/util/MidiEventListener;->onEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;J)V

    .line 249
    .end local v2    # "mel":Lcom/pdrogfer/mididroid/util/MidiEventListener;
    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->getMpqn()I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMPQN:I

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->getBeatNumber()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 224
    .local v0, "shouldDispatch":Z
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    move-object v2, p1

    check-cast v2, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-virtual {v1, v2}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->setTimeSignature(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;)V

    .line 226
    if-eqz v0, :cond_2

    .line 228
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {p0, v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 232
    .end local v0    # "shouldDispatch":Z
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->sendOnEventForClass(Lcom/pdrogfer/mididroid/event/MidiEvent;Ljava/lang/Class;)V

    .line 233
    const-class v0, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-direct {p0, p1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->sendOnEventForClass(Lcom/pdrogfer/mididroid/event/MidiEvent;Ljava/lang/Class;)V

    .line 234
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 4

    .line 107
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onStart(Z)V
    .locals 2
    .param p1, "fromBeginning"    # Z

    .line 118
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 120
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 124
    .local v1, "mel":Lcom/pdrogfer/mididroid/util/MidiEventListener;
    invoke-interface {v1, p1}, Lcom/pdrogfer/mididroid/util/MidiEventListener;->onStart(Z)V

    .line 125
    .end local v1    # "mel":Lcom/pdrogfer/mididroid/util/MidiEventListener;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method protected onStop(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .line 131
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 137
    .local v1, "mel":Lcom/pdrogfer/mididroid/util/MidiEventListener;
    invoke-interface {v1, p1}, Lcom/pdrogfer/mididroid/util/MidiEventListener;->onStop(Z)V

    .line 138
    .end local v1    # "mel":Lcom/pdrogfer/mididroid/util/MidiEventListener;
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V
    .locals 3
    .param p1, "mel"    # Lcom/pdrogfer/mididroid/util/MidiEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pdrogfer/mididroid/util/MidiEventListener;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p2, "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 145
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 149
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 158
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;>;"
    if-nez v1, :cond_1

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 162
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 5

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    .line 90
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    new-instance v1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v1}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->setTimeSignature(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;)V

    .line 92
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMidiFile:Lcom/pdrogfer/mididroid/MidiFile;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/MidiTrack;>;"
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    iput-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    .line 99
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    new-instance v3, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v3, p0, v4}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;-><init>(Lcom/pdrogfer/mididroid/util/MidiProcessor;Lcom/pdrogfer/mididroid/MidiTrack;)V

    aput-object v3, v2, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 66
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pdrogfer/mididroid/util/MidiProcessor$1;

    invoke-direct {v1, p0}, Lcom/pdrogfer/mididroid/util/MidiProcessor$1;-><init>(Lcom/pdrogfer/mididroid/util/MidiProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lcom/pdrogfer/mididroid/util/MidiProcessor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    .line 81
    return-void
.end method

.method public unregisterAllEventListeners()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 209
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 210
    return-void
.end method

.method public unregisterEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;)V
    .locals 4
    .param p1, "mel"    # Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 174
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 175
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;>;"
    if-nez v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 183
    .local v2, "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    iget-object v3, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 184
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public unregisterEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V
    .locals 2
    .param p1, "mel"    # Lcom/pdrogfer/mididroid/util/MidiEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pdrogfer/mididroid/util/MidiEventListener;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p2, "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 194
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/util/MidiEventListener;>;"
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 200
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/pdrogfer/mididroid/event/MidiEvent;>;>;"
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    return-void
.end method
