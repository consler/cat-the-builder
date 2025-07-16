.class public final Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;
.super Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.source "AndroidGraphicsLiveWallpaper.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    return-void
.end method


# virtual methods
.method protected createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;
    .locals 9

    .line 63
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->checkGL20()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    .line 87
    new-instance v8, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$2;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v8, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v7, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(IIIIII)V

    .line 103
    :goto_0
    invoke-virtual {v8, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-object v8

    .line 63
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Libgdx requires OpenGL ES 2.0"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected logManagedCachesStatus()V
    .locals 1

    .line 248
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    :cond_0
    return-void
.end method

.method public onDestroyGLSurfaceView()V
    .locals 5

    const-string v0, "WallpaperService"

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    instance-of v1, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, " > AndroidLiveWallpaper - onDestroy() stopped GLThread managed by GLSurfaceView"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "failed to destroy GLSurfaceView\'s thread! GLSurfaceView.onDetachedFromWindow impl changed since API lvl 16!"

    .line 122
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    .line 149
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 150
    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->lastFrameTime:J

    sub-long v2, v0, v2

    long-to-float p1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v2

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    .line 151
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->lastFrameTime:J

    .line 154
    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    monitor-enter p1

    .line 166
    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->running:Z

    .line 167
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    .line 168
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    .line 169
    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 171
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 172
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 173
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 176
    :cond_1
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    if-eqz v6, :cond_2

    .line 177
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    .line 178
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 181
    :cond_2
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    if-eqz v6, :cond_3

    .line 182
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    .line 183
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 185
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_4

    .line 189
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    .line 190
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AndroidGraphics"

    const-string v6, "resumed"

    invoke-interface {p1, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_6

    .line 200
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    monitor-enter p1

    .line 201
    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 202
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    move v2, v7

    .line 205
    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v2, v5, :cond_5

    .line 207
    :try_start_2
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 209
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    .line 219
    iget-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameId:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameId:J

    .line 220
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 212
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 225
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 227
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "paused"

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v4, :cond_8

    .line 232
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 234
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "destroyed"

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_8
    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long p1, v2, v4

    if-lez p1, :cond_9

    .line 238
    iget p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->fps:I

    .line 239
    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    .line 240
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameStart:J

    .line 242
    :cond_9
    iget p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    return-void

    :catchall_2
    move-exception v0

    .line 185
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method resume()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 133
    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->running:Z

    .line 134
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 136
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->requestRendering()V

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catch_0
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for resume synchronization failed!"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
