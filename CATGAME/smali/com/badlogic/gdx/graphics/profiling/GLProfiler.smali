.class public Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.super Ljava/lang/Object;
.source "GLProfiler.java"


# instance fields
.field private enabled:Z

.field private glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

.field private graphics:Lcom/badlogic/gdx/Graphics;

.field private listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Graphics;)V
    .locals 3
    .param p1, "graphics"    # Lcom/badlogic/gdx/Graphics;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 46
    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    .line 47
    .local v0, "gl30":Lcom/badlogic/gdx/graphics/GL30;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL30;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL20;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    .line 52
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->LOGGING_LISTENER:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    .line 53
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    .line 74
    .local v0, "gl30":Lcom/badlogic/gdx/graphics/GL30;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    .line 77
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    .line 78
    return-void
.end method

.method public enable()V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    .line 60
    .local v0, "gl30":Lcom/badlogic/gdx/graphics/GL30;
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    check-cast v2, Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    .line 66
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    .line 67
    return-void
.end method

.method public getCalls()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getCalls()I

    move-result v0

    return v0
.end method

.method public getDrawCalls()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getDrawCalls()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-object v0
.end method

.method public getShaderSwitches()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getShaderSwitches()I

    move-result v0

    return v0
.end method

.method public getTextureBindings()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getTextureBindings()I

    move-result v0

    return v0
.end method

.method public getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->reset()V

    .line 139
    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;)V
    .locals 0
    .param p1, "errorListener"    # Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    .line 83
    return-void
.end method
