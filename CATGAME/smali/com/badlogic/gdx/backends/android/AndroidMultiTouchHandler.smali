.class public Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;
.super Ljava/lang/Object;
.source "AndroidMultiTouchHandler.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(II)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "pointer"    # I

    .line 122
    const-string v0, ""

    .line 123
    .local v0, "actionStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 124
    const-string v0, "DOWN"

    goto :goto_0

    .line 125
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 126
    const-string v0, "POINTER DOWN"

    goto :goto_0

    .line 127
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 128
    const-string v0, "UP"

    goto :goto_0

    .line 129
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 130
    const-string v0, "POINTER UP"

    goto :goto_0

    .line 131
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 132
    const-string v0, "OUTSIDE"

    goto :goto_0

    .line 133
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 134
    const-string v0, "CANCEL"

    goto :goto_0

    .line 135
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 136
    const-string v0, "MOVE"

    goto :goto_0

    .line 138
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Android pointer id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidMultiTouchHandler"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V
    .locals 2
    .param p1, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "pointer"    # I
    .param p6, "button"    # I
    .param p7, "timeStamp"    # J

    .line 152
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 153
    .local v0, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 154
    iput p5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    .line 155
    iput p3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 156
    iput p4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 157
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 158
    iput p6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->button:I

    .line 159
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method private toGdxButton(I)I
    .locals 2
    .param p1, "button"    # I

    .line 143
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    .line 145
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v1

    .line 146
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/4 v0, 0x3

    return v0

    .line 147
    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    return v0

    .line 148
    :cond_4
    const/4 v0, -0x1

    return v0

    .line 143
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 32
    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v12, v0, 0xff

    .line 33
    .local v12, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v13, v0, 0x8

    .line 34
    .local v13, "pointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 36
    .local v14, "pointerId":I
    const/4 v2, 0x0

    .local v2, "x":I
    const/4 v3, 0x0

    .line 37
    .local v3, "y":I
    const/4 v4, 0x0

    .line 38
    .local v4, "realPointerIndex":I
    const/4 v5, 0x0

    .line 40
    .local v5, "button":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 41
    .local v15, "timeStamp":J
    monitor-enter p2

    .line 42
    const/4 v0, 0x0

    const/16 v9, 0x14

    const/4 v10, -0x1

    const/16 v17, 0x0

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_9

    .line 82
    :pswitch_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 83
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v10, v7, v6

    .line 84
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v17, v7, v6

    .line 85
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v17, v7, v6

    .line 86
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aput v17, v7, v6

    .line 87
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aput v17, v7, v6

    .line 88
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aput-boolean v17, v7, v6

    .line 89
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v17, v7, v6

    .line 90
    iget-object v7, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    aput v0, v7, v6

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 92
    .end local v6    # "i":I
    :cond_0
    goto/16 :goto_9

    .line 95
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    .line 96
    .local v0, "pointerCount":I
    const/4 v6, 0x0

    move/from16 v23, v13

    move v13, v6

    move/from16 v6, v23

    .local v6, "pointerIndex":I
    .local v13, "i":I
    :goto_1
    if-ge v13, v0, :cond_4

    .line 97
    move v8, v13

    .line 98
    .end local v6    # "pointerIndex":I
    .local v8, "pointerIndex":I
    :try_start_1
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    move v14, v6

    .line 99
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    float-to-int v7, v6

    .line 100
    .end local v2    # "x":I
    .local v7, "x":I
    :try_start_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    float-to-int v6, v2

    .line 101
    .end local v3    # "y":I
    .local v6, "y":I
    :try_start_3
    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move v4, v2

    .line 102
    if-ne v4, v10, :cond_1

    move/from16 v22, v0

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move v6, v8

    move v0, v10

    goto/16 :goto_3

    .line 103
    :cond_1
    if-lt v4, v9, :cond_2

    move v3, v6

    move v2, v7

    move v13, v8

    goto/16 :goto_9

    .line 104
    :cond_2
    :try_start_4
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v2, v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v5, v2

    .line 105
    if-eq v5, v10, :cond_3

    .line 106
    const/16 v17, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v18, v4

    .end local v4    # "realPointerIndex":I
    .local v18, "realPointerIndex":I
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "button":I
    .local v17, "button":I
    move v5, v7

    move/from16 v19, v6

    .end local v6    # "y":I
    .local v19, "y":I
    move/from16 v20, v7

    .end local v7    # "x":I
    .local v20, "x":I
    move/from16 v7, v18

    move/from16 v21, v8

    .end local v8    # "pointerIndex":I
    .local v21, "pointerIndex":I
    move/from16 v8, v17

    move/from16 v22, v0

    move v0, v10

    .end local v0    # "pointerCount":I
    .local v22, "pointerCount":I
    move-wide v9, v15

    :try_start_5
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 117
    .end local v13    # "i":I
    .end local v22    # "pointerCount":I
    :catchall_0
    move-exception v0

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    move/from16 v13, v21

    goto/16 :goto_a

    .line 108
    .end local v17    # "button":I
    .end local v18    # "realPointerIndex":I
    .end local v19    # "y":I
    .end local v20    # "x":I
    .end local v21    # "pointerIndex":I
    .restart local v0    # "pointerCount":I
    .restart local v4    # "realPointerIndex":I
    .restart local v5    # "button":I
    .restart local v6    # "y":I
    .restart local v7    # "x":I
    .restart local v8    # "pointerIndex":I
    .restart local v13    # "i":I
    :cond_3
    move/from16 v22, v0

    move/from16 v18, v4

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move v0, v10

    .end local v0    # "pointerCount":I
    .end local v4    # "realPointerIndex":I
    .end local v5    # "button":I
    .end local v6    # "y":I
    .end local v7    # "x":I
    .end local v8    # "pointerIndex":I
    .restart local v17    # "button":I
    .restart local v18    # "realPointerIndex":I
    .restart local v19    # "y":I
    .restart local v20    # "x":I
    .restart local v21    # "pointerIndex":I
    .restart local v22    # "pointerCount":I
    const/4 v4, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v5, v20

    move/from16 v7, v18

    move-wide v9, v15

    :try_start_6
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    .line 109
    :goto_2
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    iget-object v3, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v3, v3, v18

    sub-int v7, v20, v3

    aput v7, v2, v18

    .line 110
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    iget-object v3, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v3, v3, v18

    sub-int v6, v19, v3

    aput v6, v2, v18

    .line 111
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v20, v2, v18

    .line 112
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v19, v2, v18

    .line 113
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v6, v21

    .end local v21    # "pointerIndex":I
    .local v6, "pointerIndex":I
    :try_start_7
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    aput v3, v2, v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v5, v17

    .line 96
    .end local v17    # "button":I
    .restart local v5    # "button":I
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move v10, v0

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    move/from16 v0, v22

    const/16 v9, 0x14

    goto/16 :goto_1

    .line 117
    .end local v5    # "button":I
    .end local v13    # "i":I
    .end local v22    # "pointerCount":I
    .restart local v17    # "button":I
    :catchall_1
    move-exception v0

    move v13, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    goto/16 :goto_a

    .end local v6    # "pointerIndex":I
    .restart local v21    # "pointerIndex":I
    :catchall_2
    move-exception v0

    move/from16 v6, v21

    move v13, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v21    # "pointerIndex":I
    .restart local v6    # "pointerIndex":I
    goto/16 :goto_a

    .end local v17    # "button":I
    .end local v18    # "realPointerIndex":I
    .end local v19    # "y":I
    .end local v20    # "x":I
    .restart local v4    # "realPointerIndex":I
    .restart local v5    # "button":I
    .local v6, "y":I
    .restart local v7    # "x":I
    .restart local v8    # "pointerIndex":I
    :catchall_3
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move v6, v8

    move v13, v6

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v4    # "realPointerIndex":I
    .end local v7    # "x":I
    .end local v8    # "pointerIndex":I
    .local v6, "pointerIndex":I
    .restart local v18    # "realPointerIndex":I
    .restart local v19    # "y":I
    .restart local v20    # "x":I
    goto/16 :goto_a

    .end local v18    # "realPointerIndex":I
    .end local v19    # "y":I
    .end local v20    # "x":I
    .restart local v4    # "realPointerIndex":I
    .local v6, "y":I
    .restart local v7    # "x":I
    .restart local v8    # "pointerIndex":I
    :catchall_4
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    move v6, v8

    move v13, v6

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v7    # "x":I
    .end local v8    # "pointerIndex":I
    .local v6, "pointerIndex":I
    .restart local v19    # "y":I
    .restart local v20    # "x":I
    goto/16 :goto_a

    .end local v6    # "pointerIndex":I
    .end local v19    # "y":I
    .end local v20    # "x":I
    .restart local v3    # "y":I
    .restart local v7    # "x":I
    .restart local v8    # "pointerIndex":I
    :catchall_5
    move-exception v0

    move/from16 v20, v7

    move v6, v8

    move v13, v6

    move/from16 v2, v20

    .end local v7    # "x":I
    .end local v8    # "pointerIndex":I
    .restart local v6    # "pointerIndex":I
    .restart local v20    # "x":I
    goto/16 :goto_a

    .end local v6    # "pointerIndex":I
    .end local v20    # "x":I
    .restart local v2    # "x":I
    .restart local v8    # "pointerIndex":I
    :catchall_6
    move-exception v0

    move v6, v8

    move v13, v6

    .end local v8    # "pointerIndex":I
    .restart local v6    # "pointerIndex":I
    goto/16 :goto_a

    .line 96
    .restart local v0    # "pointerCount":I
    .restart local v13    # "i":I
    :cond_4
    move/from16 v22, v0

    .end local v0    # "pointerCount":I
    .restart local v22    # "pointerCount":I
    move v13, v6

    goto/16 :goto_9

    .line 64
    .end local v6    # "pointerIndex":I
    .end local v22    # "pointerCount":I
    .local v13, "pointerIndex":I
    :pswitch_2
    move/from16 v18, v0

    move v0, v10

    :try_start_8
    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_13

    move v9, v6

    .line 65
    .end local v4    # "realPointerIndex":I
    .local v9, "realPointerIndex":I
    if-ne v9, v0, :cond_5

    goto :goto_4

    .line 66
    :cond_5
    const/16 v4, 0x14

    if-lt v9, v4, :cond_6

    .line 117
    :goto_4
    move v4, v9

    goto/16 :goto_9

    .line 67
    :cond_6
    :try_start_9
    iget-object v4, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v0, v4, v9

    .line 68
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    float-to-int v10, v4

    .line 69
    .end local v2    # "x":I
    .local v10, "x":I
    :try_start_a
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    float-to-int v8, v2

    .line 70
    .end local v3    # "y":I
    .local v8, "y":I
    :try_start_b
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v2, v2, v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move v7, v2

    .line 71
    .end local v5    # "button":I
    .local v7, "button":I
    if-eq v7, v0, :cond_7

    const/4 v4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v5, v10

    move v6, v8

    move/from16 v19, v7

    .end local v7    # "button":I
    .local v19, "button":I
    move v7, v9

    move/from16 v20, v8

    .end local v8    # "y":I
    .local v20, "y":I
    move/from16 v8, v19

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .local v21, "realPointerIndex":I
    .local v22, "x":I
    move-wide v9, v15

    :try_start_c
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    goto :goto_5

    .end local v19    # "button":I
    .end local v20    # "y":I
    .end local v21    # "realPointerIndex":I
    .end local v22    # "x":I
    .restart local v7    # "button":I
    .restart local v8    # "y":I
    .restart local v9    # "realPointerIndex":I
    .restart local v10    # "x":I
    :cond_7
    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    .line 72
    .end local v7    # "button":I
    .end local v8    # "y":I
    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .restart local v19    # "button":I
    .restart local v20    # "y":I
    .restart local v21    # "realPointerIndex":I
    .restart local v22    # "x":I
    :goto_5
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v22, v0, v21

    .line 73
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v20, v0, v21

    .line 74
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aput v17, v0, v21

    .line 75
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aput v17, v0, v21

    .line 76
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aput-boolean v17, v0, v21

    .line 77
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v17, v0, v21

    .line 78
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    aput v18, v0, v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 79
    move/from16 v5, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v2, v22

    goto/16 :goto_9

    .line 117
    :catchall_7
    move-exception v0

    move/from16 v5, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v2, v22

    goto/16 :goto_a

    .end local v19    # "button":I
    .end local v20    # "y":I
    .end local v21    # "realPointerIndex":I
    .end local v22    # "x":I
    .restart local v5    # "button":I
    .restart local v8    # "y":I
    .restart local v9    # "realPointerIndex":I
    .restart local v10    # "x":I
    :catchall_8
    move-exception v0

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v2, v22

    .end local v8    # "y":I
    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .restart local v20    # "y":I
    .restart local v21    # "realPointerIndex":I
    .restart local v22    # "x":I
    goto/16 :goto_a

    .end local v20    # "y":I
    .end local v21    # "realPointerIndex":I
    .end local v22    # "x":I
    .restart local v3    # "y":I
    .restart local v9    # "realPointerIndex":I
    .restart local v10    # "x":I
    :catchall_9
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v4, v21

    move/from16 v2, v22

    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .restart local v21    # "realPointerIndex":I
    .restart local v22    # "x":I
    goto/16 :goto_a

    .end local v21    # "realPointerIndex":I
    .end local v22    # "x":I
    .restart local v2    # "x":I
    .restart local v9    # "realPointerIndex":I
    :catchall_a
    move-exception v0

    move/from16 v21, v9

    move/from16 v4, v21

    .end local v9    # "realPointerIndex":I
    .restart local v21    # "realPointerIndex":I
    goto/16 :goto_a

    .line 45
    .end local v21    # "realPointerIndex":I
    .restart local v4    # "realPointerIndex":I
    :pswitch_3
    move v0, v10

    :try_start_d
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getFreePointerIndex()I

    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_13

    move v9, v6

    .line 46
    .end local v4    # "realPointerIndex":I
    .restart local v9    # "realPointerIndex":I
    const/16 v4, 0x14

    if-lt v9, v4, :cond_8

    move v4, v9

    goto/16 :goto_9

    .line 47
    :cond_8
    :try_start_e
    iget-object v4, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v14, v4, v9

    .line 48
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    float-to-int v10, v4

    .line 49
    .end local v2    # "x":I
    .restart local v10    # "x":I
    :try_start_f
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_11

    float-to-int v8, v2

    .line 50
    .end local v3    # "y":I
    .restart local v8    # "y":I
    :try_start_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    const/16 v3, 0xe

    if-lt v2, v3, :cond_9

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object/from16 v7, p0

    :try_start_12
    invoke-direct {v7, v2}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->toGdxButton(I)I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move v5, v2

    goto :goto_7

    .line 117
    :catchall_b
    move-exception v0

    goto :goto_6

    :catchall_c
    move-exception v0

    move-object/from16 v7, p0

    :goto_6
    move v3, v8

    move v4, v9

    move v2, v10

    goto/16 :goto_a

    .line 50
    :cond_9
    move-object/from16 v7, p0

    :goto_7
    move v6, v5

    .line 51
    .end local v5    # "button":I
    .local v6, "button":I
    if-eq v6, v0, :cond_a

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v5, v10

    move/from16 v18, v6

    .end local v6    # "button":I
    .local v18, "button":I
    move v6, v8

    move v7, v9

    move/from16 v19, v8

    .end local v8    # "y":I
    .local v19, "y":I
    move/from16 v8, v18

    move/from16 v20, v9

    move/from16 v21, v10

    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .local v20, "realPointerIndex":I
    .local v21, "x":I
    move-wide v9, v15

    :try_start_13
    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_8

    .line 117
    :catchall_d
    move-exception v0

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    goto/16 :goto_a

    .line 51
    .end local v18    # "button":I
    .end local v19    # "y":I
    .end local v20    # "realPointerIndex":I
    .end local v21    # "x":I
    .restart local v6    # "button":I
    .restart local v8    # "y":I
    .restart local v9    # "realPointerIndex":I
    .restart local v10    # "x":I
    :cond_a
    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 52
    .end local v6    # "button":I
    .end local v8    # "y":I
    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .restart local v18    # "button":I
    .restart local v19    # "y":I
    .restart local v20    # "realPointerIndex":I
    .restart local v21    # "x":I
    :goto_8
    :try_start_14
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v21, v2, v20

    .line 53
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v19, v2, v20

    .line 54
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aput v17, v2, v20

    .line 55
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aput v17, v2, v20

    .line 56
    iget-object v2, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    move/from16 v5, v18

    .end local v18    # "button":I
    .restart local v5    # "button":I
    if-eq v5, v0, :cond_b

    const/16 v17, 0x1

    :cond_b
    :try_start_15
    aput-boolean v17, v2, v20

    .line 57
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v5, v0, v20

    .line 58
    iget-object v0, v11, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    aput v2, v0, v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 59
    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    goto :goto_9

    .line 117
    :catchall_e
    move-exception v0

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    goto :goto_a

    .end local v5    # "button":I
    .restart local v18    # "button":I
    :catchall_f
    move-exception v0

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    .end local v18    # "button":I
    .restart local v5    # "button":I
    goto :goto_a

    .end local v19    # "y":I
    .end local v20    # "realPointerIndex":I
    .end local v21    # "x":I
    .restart local v8    # "y":I
    .restart local v9    # "realPointerIndex":I
    .restart local v10    # "x":I
    :catchall_10
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v21

    .end local v8    # "y":I
    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .restart local v19    # "y":I
    .restart local v20    # "realPointerIndex":I
    .restart local v21    # "x":I
    goto :goto_a

    .end local v19    # "y":I
    .end local v20    # "realPointerIndex":I
    .end local v21    # "x":I
    .restart local v3    # "y":I
    .restart local v9    # "realPointerIndex":I
    .restart local v10    # "x":I
    :catchall_11
    move-exception v0

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v4, v20

    move/from16 v2, v21

    .end local v9    # "realPointerIndex":I
    .end local v10    # "x":I
    .restart local v20    # "realPointerIndex":I
    .restart local v21    # "x":I
    goto :goto_a

    .end local v20    # "realPointerIndex":I
    .end local v21    # "x":I
    .restart local v2    # "x":I
    .restart local v9    # "realPointerIndex":I
    :catchall_12
    move-exception v0

    move/from16 v20, v9

    move/from16 v4, v20

    .end local v9    # "realPointerIndex":I
    .restart local v20    # "realPointerIndex":I
    goto :goto_a

    .end local v20    # "realPointerIndex":I
    .restart local v4    # "realPointerIndex":I
    :goto_9
    :try_start_16
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 119
    return-void

    .line 117
    :catchall_13
    move-exception v0

    :goto_a
    :try_start_17
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
