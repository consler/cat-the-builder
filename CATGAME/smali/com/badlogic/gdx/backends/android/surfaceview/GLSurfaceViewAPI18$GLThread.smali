.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;)V"
        }
    .end annotation

    .line 1273
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1274
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1275
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    .line 1276
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1277
    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    .line 1278
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1279
    return-void
.end method

.method static synthetic access$1102(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;
    .param p1, "x1"    # Z

    .line 1271
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1320
    move-object/from16 v1, p0

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    .line 1321
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1322
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1324
    const/4 v2, 0x0

    .line 1325
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1326
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1327
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1328
    .local v5, "createGlInterface":Z
    const/4 v6, 0x0

    .line 1329
    .local v6, "lostEglContext":Z
    const/4 v7, 0x0

    .line 1330
    .local v7, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1331
    .local v8, "wantRenderNotification":Z
    const/4 v9, 0x0

    .line 1332
    .local v9, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1333
    .local v10, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1334
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1335
    .local v12, "h":I
    const/4 v13, 0x0

    .line 1338
    .local v13, "event":Ljava/lang/Runnable;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1340
    :goto_1
    :try_start_1
    iget-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldExit:Z

    if-eqz v15, :cond_0

    .line 1341
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1608
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1609
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1611
    monitor-exit v15

    .line 1341
    return-void

    .line 1611
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1344
    :cond_0
    :try_start_3
    iget-object v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1345
    iget-object v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Runnable;

    move-object v0, v15

    .line 1346
    .end local v13    # "event":Ljava/lang/Runnable;
    .local v0, "event":Ljava/lang/Runnable;
    move-object v13, v0

    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1350
    .end local v0    # "event":Ljava/lang/Runnable;
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x0

    .line 1351
    .local v0, "pausing":Z
    iget-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    move/from16 v16, v0

    .end local v0    # "pausing":Z
    .local v16, "pausing":Z
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    if-eq v15, v0, :cond_2

    .line 1352
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1353
    .end local v16    # "pausing":Z
    .restart local v0    # "pausing":Z
    iget-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    iput-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    .line 1354
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    move/from16 v16, v0

    .line 1361
    .end local v0    # "pausing":Z
    .restart local v16    # "pausing":Z
    :cond_2
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_3

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    .line 1368
    const/4 v10, 0x1

    .line 1372
    :cond_3
    if-eqz v6, :cond_4

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1375
    const/4 v0, 0x0

    move v6, v0

    .line 1379
    :cond_4
    if-eqz v16, :cond_5

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1387
    :cond_5
    if-eqz v16, :cond_8

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_8

    .line 1388
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1389
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-nez v0, :cond_6

    const/4 v15, 0x0

    goto :goto_2

    .line 1390
    :cond_6
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$900(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Z

    move-result v15

    :goto_2
    nop

    .line 1391
    .local v15, "preserveEglContextOnPause":Z
    if-eqz v15, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1392
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1400
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    .end local v15    # "preserveEglContextOnPause":Z
    :cond_8
    if-eqz v16, :cond_9

    .line 1401
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1402
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->finish()V

    .line 1410
    :cond_9
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_b

    .line 1414
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_a

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1417
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    .line 1418
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1419
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1423
    :cond_b
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_c

    .line 1427
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    .line 1428
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1431
    :cond_c
    if-eqz v9, :cond_d

    .line 1435
    const/4 v8, 0x0

    .line 1436
    const/4 v9, 0x0

    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1438
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1442
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1445
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_f

    .line 1446
    if-eqz v10, :cond_e

    .line 1447
    const/4 v0, 0x0

    move v10, v0

    .end local v10    # "askedToReleaseEglContext":Z
    .local v0, "askedToReleaseEglContext":Z
    goto :goto_3

    .line 1448
    .end local v0    # "askedToReleaseEglContext":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    :cond_e
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 1450
    :try_start_4
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1454
    nop

    .line 1455
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1456
    const/4 v3, 0x1

    .line 1458
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1453
    nop

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    throw v0

    .line 1462
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    .restart local v8    # "wantRenderNotification":Z
    .restart local v9    # "doRenderNotification":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    .restart local v11    # "w":I
    .restart local v12    # "h":I
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_f
    :goto_3
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1464
    const/4 v0, 0x1

    .line 1465
    .end local v4    # "createEglSurface":Z
    .local v0, "createEglSurface":Z
    const/4 v4, 0x1

    .line 1466
    .end local v5    # "createGlInterface":Z
    .local v4, "createGlInterface":Z
    const/4 v5, 0x1

    move v7, v5

    move v5, v4

    move v4, v0

    .line 1469
    .end local v0    # "createEglSurface":Z
    .local v4, "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    :cond_10
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1e

    .line 1470
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_11

    .line 1471
    const/4 v7, 0x1

    .line 1472
    iget v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    move v11, v0

    .line 1473
    iget v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    move v12, v0

    .line 1474
    const/4 v8, 0x1

    .line 1482
    const/4 v4, 0x1

    .line 1484
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1486
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1487
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1488
    nop

    .line 1509
    .end local v16    # "pausing":Z
    :goto_4
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1511
    if-eqz v13, :cond_12

    .line 1512
    :try_start_6
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1513
    const/4 v13, 0x0

    .line 1514
    goto/16 :goto_0

    .line 1517
    :cond_12
    if-eqz v4, :cond_14

    .line 1521
    iget-object v14, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v14}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->createSurface()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1522
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1523
    const/4 v15, 0x1

    :try_start_7
    iput-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1524
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1525
    monitor-exit v14

    .line 1534
    const/4 v4, 0x0

    goto :goto_5

    .line 1525
    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1527
    :cond_13
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1528
    const/4 v15, 0x1

    :try_start_9
    iput-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1529
    iput-boolean v15, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1530
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1531
    monitor-exit v14

    .line 1532
    goto/16 :goto_0

    .line 1531
    :catchall_2
    move-exception v0

    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    .line 1537
    :cond_14
    :goto_5
    if-eqz v5, :cond_15

    .line 1538
    iget-object v14, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v14}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v14

    check-cast v14, Ljavax/microedition/khronos/opengles/GL10;

    move-object v2, v14

    .line 1540
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1541
    const/4 v5, 0x0

    .line 1544
    :cond_15
    if-eqz v3, :cond_17

    .line 1548
    iget-object v14, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1549
    .local v14, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-eqz v14, :cond_16

    .line 1550
    invoke-static {v14}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v15

    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v15, v2, v0}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1552
    :cond_16
    const/4 v0, 0x0

    move v3, v0

    .line 1555
    .end local v14    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_17
    if-eqz v7, :cond_19

    .line 1559
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1560
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-eqz v0, :cond_18

    .line 1561
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v14

    invoke-interface {v14, v2, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1563
    :cond_18
    const/4 v7, 0x0

    .line 1570
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_19
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1571
    .restart local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-eqz v0, :cond_1a

    .line 1572
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v14

    invoke-interface {v14, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1575
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_1a
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->swap()I

    move-result v0

    move v14, v0

    .line 1576
    .local v14, "swapError":I
    const/16 v0, 0x3000

    if-eq v14, v0, :cond_1c

    const/16 v0, 0x300e

    if-eq v14, v0, :cond_1b

    .line 1590
    const-string v0, "GLThread"

    const-string v15, "eglSwapBuffers"

    invoke-static {v0, v15, v14}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1592
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1593
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1594
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1595
    monitor-exit v15

    goto :goto_6

    :catchall_3
    move-exception v0

    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1583
    :cond_1b
    const/4 v0, 0x1

    .line 1584
    .end local v6    # "lostEglContext":Z
    .local v0, "lostEglContext":Z
    move v6, v0

    goto :goto_6

    .line 1578
    .end local v0    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :cond_1c
    nop

    .line 1599
    :goto_6
    if-eqz v8, :cond_1d

    .line 1600
    const/4 v0, 0x1

    move v9, v0

    .line 1602
    .end local v14    # "swapError":I
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1507
    .restart local v16    # "pausing":Z
    :cond_1e
    :try_start_d
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1508
    .end local v16    # "pausing":Z
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1509
    :catchall_4
    move-exception v0

    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1608
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    :catchall_5
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1609
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1611
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1620
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1313
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->finish()V

    .line 1315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1316
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1318
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->destroySurface()V

    .line 1306
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1616
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1636
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1637
    :try_start_0
    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 3

    .line 1686
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1690
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1691
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1692
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1697
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1700
    :goto_1
    goto :goto_0

    .line 1698
    :catch_0
    move-exception v1

    .line 1699
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1702
    :cond_0
    monitor-exit v0

    .line 1703
    return-void

    .line 1702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1706
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1710
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1711
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1712
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1713
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1714
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1719
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1722
    :goto_1
    goto :goto_0

    .line 1720
    :catch_0
    move-exception v1

    .line 1721
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1724
    :cond_0
    monitor-exit v0

    .line 1725
    return-void

    .line 1724
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1728
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1729
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1730
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    .line 1731
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1732
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1734
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1737
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    .line 1738
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->ableToDraw()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1743
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1746
    :goto_1
    goto :goto_0

    .line 1744
    :catch_0
    move-exception v1

    .line 1745
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1748
    :cond_0
    monitor-exit v0

    .line 1749
    return-void

    .line 1748
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1777
    if-eqz p1, :cond_0

    .line 1780
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1781
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1783
    monitor-exit v0

    .line 1784
    return-void

    .line 1783
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1778
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .line 1754
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1755
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldExit:Z

    .line 1756
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1757
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1759
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    :goto_1
    goto :goto_0

    .line 1760
    :catch_0
    move-exception v1

    .line 1761
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1764
    :cond_0
    monitor-exit v0

    .line 1765
    return-void

    .line 1764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .line 1768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    .line 1769
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1770
    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1642
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1643
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1644
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit v0

    .line 1646
    return-void

    .line 1645
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->setName(Ljava/lang/String;)V

    .line 1289
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    :goto_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1294
    goto :goto_1

    .line 1293
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    throw v0

    .line 1290
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1295
    :goto_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .line 1626
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1629
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1630
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    .line 1631
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1632
    monitor-exit v0

    .line 1633
    return-void

    .line 1632
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .line 1649
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1653
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    .line 1654
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1655
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1656
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1660
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1663
    :goto_1
    goto :goto_0

    .line 1661
    :catch_0
    move-exception v1

    .line 1662
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1665
    :cond_0
    monitor-exit v0

    .line 1666
    return-void

    .line 1665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    .line 1669
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1673
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    .line 1674
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1675
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1677
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1680
    :goto_1
    goto :goto_0

    .line 1678
    :catch_0
    move-exception v1

    .line 1679
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1682
    :cond_0
    monitor-exit v0

    .line 1683
    return-void

    .line 1682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
