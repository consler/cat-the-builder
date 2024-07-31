.class public final Lorg/catrobat/catroid/content/actions/WebRequestAction;
.super Lorg/catrobat/catroid/content/actions/WebAction;
.source "WebRequestAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0016J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0004H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0014H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/WebRequestAction;",
        "Lorg/catrobat/catroid/content/actions/WebAction;",
        "()V",
        "response",
        "",
        "getResponse",
        "()Ljava/lang/String;",
        "setResponse",
        "(Ljava/lang/String;)V",
        "userVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "getUserVariable",
        "()Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "setUserVariable",
        "(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V",
        "act",
        "",
        "delta",
        "",
        "handleError",
        "",
        "error",
        "handleResponse",
        "onCancelledCall",
        "onRequestError",
        "httpError",
        "onRequestSuccess",
        "httpResponse",
        "Lokhttp3/Response;",
        "restart",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 3
    .param p1, "delta"    # F

    .line 35
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WebRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WebRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 36
    .local v0, "scopeInitialized":Z
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WebRequestAction;->getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 38
    :cond_3
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/WebAction;->act(F)Z

    move-result v2

    goto :goto_3

    .line 37
    :cond_4
    :goto_2
    nop

    .line 36
    :goto_3
    return v2
.end method

.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public handleResponse()V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onCancelledCall()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    .line 71
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->onCancelledCall()V

    .line 72
    return-void
.end method

.method public onRequestError(Ljava/lang/String;)V
    .locals 1
    .param p1, "httpError"    # Ljava/lang/String;

    const-string v0, "httpError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    .line 66
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/WebAction;->onRequestError(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onRequestSuccess(Lokhttp3/Response;)V
    .locals 5
    .param p1, "httpResponse"    # Lokhttp3/Response;

    const-string v0, ""

    const-string v1, "httpResponse"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "HTTP reponse body is empty"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    nop

    .line 55
    .end local v1    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    .line 61
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/WebAction;->onRequestSuccess(Lokhttp3/Response;)V

    .line 62
    return-void
.end method

.method public restart()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    .line 51
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->restart()V

    .line 52
    return-void
.end method

.method public final setResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->response:Ljava/lang/String;

    return-void
.end method

.method public final setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebRequestAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method
