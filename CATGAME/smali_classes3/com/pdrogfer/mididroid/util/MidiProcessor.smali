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
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMidiFile:Lcom/pdrogfer/mididroid/MidiFile;

    const v0, 0x7a120

    .line 52
    iput v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMPQN:I

    .line 53
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/MidiFile;->getResolution()I

    move-result p1

    iput p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mPPQ:I

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    .line 58
    new-instance p1, Lcom/pdrogfer/mididroid/util/MetronomeTick;

    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    iget v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mPPQ:I

    invoke-direct {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MetronomeTick;-><init>(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;I)V

    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    .line 60
    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/pdrogfer/mididroid/util/MidiProcessor;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->process()V

    return-void
.end method

.method private process()V
    .locals 13

    .line 255
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->onStart(Z)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 261
    :catch_0
    :goto_1
    iget-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    if-eqz v0, :cond_9

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v5

    const-wide/16 v11, 0x8

    cmp-long v0, v9, v11

    if-gez v0, :cond_1

    sub-long/2addr v11, v9

    .line 271
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 279
    :cond_1
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMPQN:I

    iget v11, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mPPQ:I

    invoke-static {v9, v10, v0, v11}, Lcom/pdrogfer/mididroid/util/MidiUtil;->msToTicks(JII)D

    move-result-wide v11

    cmpg-double v0, v11, v2

    if-gez v0, :cond_2

    goto :goto_1

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {v0, v11, v12}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->update(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 292
    :cond_3
    iget-wide v5, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    .line 293
    iget-wide v5, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    add-double/2addr v5, v11

    iput-wide v5, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    move v0, v4

    move v5, v0

    .line 296
    :goto_2
    iget-object v6, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    array-length v9, v6

    if-ge v0, v9, :cond_7

    .line 299
    aget-object v6, v6, v0

    .line 300
    invoke-virtual {v6}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->hasMoreEvents()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    .line 305
    :cond_4
    iget-wide v9, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    invoke-virtual {v6, v9, v10}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->getNextEventsUpToTick(D)Ljava/util/ArrayList;

    move-result-object v9

    .line 306
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 308
    invoke-virtual {p0, v10}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    goto :goto_3

    .line 311
    :cond_5
    invoke-virtual {v6}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->hasMoreEvents()Z

    move-result v6

    if-eqz v6, :cond_6

    move v5, v1

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    move-wide v5, v7

    goto :goto_1

    :cond_9
    move v1, v4

    .line 324
    :goto_5
    iput-boolean v4, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    .line 325
    invoke-virtual {p0, v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->onStop(Z)V

    return-void
.end method

.method private sendOnEventForClass(Lcom/pdrogfer/mididroid/event/MidiEvent;Ljava/lang/Class;)V
    .locals 3
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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 248
    iget-wide v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    invoke-interface {v0, p1, v1, v2}, Lcom/pdrogfer/mididroid/util/MidiEventListener;->onEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V
    .locals 3

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

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    move-object v2, p1

    check-cast v2, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-virtual {v0, v2}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->setTimeSignature(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;)V

    if-eqz v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->dispatch(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 232
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->sendOnEventForClass(Lcom/pdrogfer/mididroid/event/MidiEvent;Ljava/lang/Class;)V

    .line 233
    const-class v0, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-direct {p0, p1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->sendOnEventForClass(Lcom/pdrogfer/mididroid/event/MidiEvent;Ljava/lang/Class;)V

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

    .line 118
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 120
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 124
    invoke-interface {v1, p1}, Lcom/pdrogfer/mididroid/util/MidiEventListener;->onStart(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop(Z)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/util/MidiEventListener;

    .line 137
    invoke-interface {v1, p1}, Lcom/pdrogfer/mididroid/util/MidiEventListener;->onStop(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V
    .locals 2
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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object p2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

    const-wide/16 v1, 0x0

    .line 87
    iput-wide v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mTicksElapsed:D

    const-wide/16 v1, 0x0

    .line 88
    iput-wide v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMsElapsed:J

    .line 90
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMetronome:Lcom/pdrogfer/mididroid/util/MetronomeTick;

    new-instance v2, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v2}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->setTimeSignature(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;)V

    .line 92
    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mMidiFile:Lcom/pdrogfer/mididroid/MidiFile;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    iput-object v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventQueues:[Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    new-instance v3, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v3, p0, v4}, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;-><init>(Lcom/pdrogfer/mididroid/util/MidiProcessor;Lcom/pdrogfer/mididroid/MidiTrack;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    :cond_0
    const/4 v0, 0x1

    .line 68
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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mRunning:Z

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

    return-void
.end method

.method public unregisterEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 183
    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V
    .locals 1
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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
