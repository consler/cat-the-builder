.class public Lcom/badlogic/gdx/InputEventQueue;
.super Ljava/lang/Object;
.source "InputEventQueue.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# static fields
.field private static final KEY_DOWN:I = 0x0

.field private static final KEY_TYPED:I = 0x2

.field private static final KEY_UP:I = 0x1

.field private static final MOUSE_MOVED:I = 0x6

.field private static final SCROLLED:I = 0x7

.field private static final SKIP:I = -0x1

.field private static final TOUCH_DOWN:I = 0x3

.field private static final TOUCH_DRAGGED:I = 0x5

.field private static final TOUCH_UP:I = 0x4


# instance fields
.field private currentEventTime:J

.field private final processingQueue:Lcom/badlogic/gdx/utils/IntArray;

.field private processor:Lcom/badlogic/gdx/InputProcessor;

.field private final queue:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    .line 44
    iput-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 45
    return-void
.end method

.method private declared-synchronized next(II)I
    .locals 4
    .param p1, "nextType"    # I
    .param p2, "i"    # I

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 106
    .local v0, "q":[I
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 107
    aget v2, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .local v2, "type":I
    if-ne v2, p1, :cond_0

    monitor-exit p0

    return p2

    .line 109
    :cond_0
    add-int/lit8 p2, p2, 0x3

    .line 110
    packed-switch v2, :pswitch_data_0

    .line 139
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    goto :goto_2

    .line 136
    .restart local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    .line 137
    goto :goto_1

    .line 133
    :pswitch_1
    add-int/lit8 p2, p2, 0x2

    .line 134
    goto :goto_1

    .line 130
    :pswitch_2
    add-int/lit8 p2, p2, 0x3

    .line 131
    goto :goto_1

    .line 127
    :pswitch_3
    add-int/lit8 p2, p2, 0x4

    .line 128
    goto :goto_1

    .line 124
    :pswitch_4
    add-int/lit8 p2, p2, 0x4

    .line 125
    goto :goto_1

    .line 121
    :pswitch_5
    add-int/lit8 p2, p2, 0x1

    .line 122
    goto :goto_1

    .line 118
    :pswitch_6
    add-int/lit8 p2, p2, 0x1

    .line 119
    goto :goto_1

    .line 115
    :pswitch_7
    add-int/lit8 p2, p2, 0x1

    .line 116
    goto :goto_1

    .line 112
    :pswitch_8
    aget v3, v0, p2

    add-int/2addr p2, v3

    .line 113
    nop

    .line 141
    .end local v2    # "type":I
    :goto_1
    goto :goto_0

    .line 139
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .restart local v2    # "type":I
    :goto_2
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v1    # "n":I
    .end local v2    # "type":I
    :cond_1
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 104
    .end local v0    # "q":[I
    .end local p1    # "nextType":I
    .end local p2    # "i":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queueTime()V
    .locals 5

    .line 146
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 147
    .local v0, "time":J
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 148
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 149
    return-void
.end method


# virtual methods
.method public drain()V
    .locals 12

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 59
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;)V

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 65
    .local v0, "q":[I
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 66
    .local v1, "localProcessor":Lcom/badlogic/gdx/InputProcessor;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 67
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v2, v0, v2

    .line 68
    .local v2, "type":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v4, v0, v4

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget v5, v0, v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long v5, v6, v8

    iput-wide v5, p0, Lcom/badlogic/gdx/InputEventQueue;->currentEventTime:J

    .line 69
    packed-switch v2, :pswitch_data_0

    .line 98
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 95
    :pswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/InputProcessor;->scrolled(I)Z

    .line 96
    move v2, v5

    goto/16 :goto_1

    .line 92
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-interface {v1, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    .line 93
    move v2, v6

    goto :goto_1

    .line 89
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget v5, v0, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-interface {v1, v4, v5, v6}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    .line 90
    move v2, v7

    goto :goto_1

    .line 86
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :pswitch_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget v5, v0, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget v7, v0, v7

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    .line 87
    move v2, v8

    goto :goto_1

    .line 83
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :pswitch_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget v5, v0, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .restart local v8    # "i":I
    aget v7, v0, v7

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 84
    move v2, v8

    goto :goto_1

    .line 80
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :pswitch_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    int-to-char v4, v4

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    .line 81
    move v2, v5

    goto :goto_1

    .line 77
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    .line 78
    move v2, v5

    goto :goto_1

    .line 74
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_7
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v4, v0, v4

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 75
    move v2, v5

    goto :goto_1

    .line 71
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_8
    aget v5, v0, v4

    add-int/2addr v4, v5

    .line 72
    move v2, v4

    .line 100
    .end local v4    # "i":I
    .local v2, "i":I
    :goto_1
    goto/16 :goto_0

    .line 101
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 102
    return-void

    .line 63
    .end local v0    # "q":[I
    .end local v1    # "localProcessor":Lcom/badlogic/gdx/InputProcessor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentEventTime()J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/badlogic/gdx/InputEventQueue;->currentEventTime:J

    return-wide v0
.end method

.method public getProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public declared-synchronized keyDown(I)Z
    .locals 2
    .param p1, "keycode"    # I

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 153
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return v1

    .line 151
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1    # "keycode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyTyped(C)Z
    .locals 2
    .param p1, "character"    # C

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 167
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 165
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1    # "character":C
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyUp(I)Z
    .locals 2
    .param p1, "keycode"    # I

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 160
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 158
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1    # "keycode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mouseMoved(II)Z
    .locals 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    monitor-enter p0

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 211
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 212
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 210
    add-int/lit8 v3, v2, 0x5

    invoke-direct {p0, v1, v3}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 215
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 216
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 217
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return v0

    .line 209
    .end local p1    # "screenX":I
    .end local p2    # "screenY":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrolled(I)Z
    .locals 2
    .param p1, "amount"    # I

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 223
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 221
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1    # "amount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 49
    return-void
.end method

.method public declared-synchronized touchDown(IIII)Z
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 174
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 172
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1    # "screenX":I
    .end local p2    # "screenY":I
    .end local p3    # "pointer":I
    .end local p4    # "button":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchDragged(III)Z
    .locals 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    monitor-enter p0

    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 195
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 197
    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    .line 194
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    :cond_0
    add-int/lit8 v3, v2, 0x6

    invoke-direct {p0, v1, v3}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 200
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 201
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 204
    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return v0

    .line 193
    .end local p1    # "screenX":I
    .end local p2    # "screenY":I
    .end local p3    # "pointer":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchUp(IIII)Z
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 184
    invoke-direct {p0}, Lcom/badlogic/gdx/InputEventQueue;->queueTime()V

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 182
    .end local p0    # "this":Lcom/badlogic/gdx/InputEventQueue;
    .end local p1    # "screenX":I
    .end local p2    # "screenY":I
    .end local p3    # "pointer":I
    .end local p4    # "button":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
