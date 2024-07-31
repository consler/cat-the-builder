.class public Lorg/catrobat/catroid/content/actions/LookRequestAction;
.super Lorg/catrobat/catroid/content/actions/WebAction;
.source "LookRequestAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0016J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002J\u0008\u0010\u001b\u001a\u00020\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0018H\u0016J\u0010\u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u0004H\u0002J\u0008\u0010%\u001a\u00020\u0018H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006&"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/LookRequestAction;",
        "Lorg/catrobat/catroid/content/actions/WebAction;",
        "()V",
        "errorCode",
        "",
        "getErrorCode",
        "()Ljava/lang/String;",
        "setErrorCode",
        "(Ljava/lang/String;)V",
        "fileExtension",
        "lookName",
        "response",
        "Ljava/io/InputStream;",
        "getResponse",
        "()Ljava/io/InputStream;",
        "setResponse",
        "(Ljava/io/InputStream;)V",
        "act",
        "",
        "delta",
        "",
        "getLookFromResponse",
        "Lorg/catrobat/catroid/common/LookData;",
        "handleError",
        "",
        "error",
        "handleInvalidFormat",
        "handleResponse",
        "onCancelledCall",
        "onRequestError",
        "httpError",
        "onRequestSuccess",
        "httpResponse",
        "Lokhttp3/Response;",
        "restart",
        "showToastMessage",
        "message",
        "updateLookListIndex",
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
.field private errorCode:Ljava/lang/String;

.field private fileExtension:Ljava/lang/String;

.field private lookName:Ljava/lang/String;

.field private response:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;-><init>()V

    return-void
.end method

.method private final handleInvalidFormat()V
    .locals 6

    .line 89
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/content/Context;
    const/4 v1, 0x0

    .line 90
    .local v1, "$i$a$-let-LookRequestAction$handleInvalidFormat$1":I
    const v2, 0x7f12053b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.getString(R.string.lo\u2026_type_error_message, url)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->showToastMessage(Ljava/lang/String;)V

    .line 91
    nop

    .line 89
    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "$i$a$-let-LookRequestAction$handleInvalidFormat$1":I
    nop

    .line 92
    :cond_0
    return-void
.end method

.method private final showToastMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .local v0, "params":Ljava/util/ArrayList;
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method private final updateLookListIndex()V
    .locals 5

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 63
    .local v0, "currentLook":Lorg/catrobat/catroid/content/Look;
    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookListIndexBeforeLookRequest()I

    move-result v3

    if-gt v3, v2, :cond_4

    .line 64
    :cond_1
    nop

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :cond_3
    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Look;->setLookListIndexBeforeLookRequest(I)V

    .line 67
    :cond_4
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 45
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/WebAction;->act(F)Z

    move-result v0

    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 45
    :goto_2
    return v0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getLookFromResponse()Lorg/catrobat/catroid/common/LookData;
    .locals 4

    .line 70
    nop

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->handleInvalidFormat()V

    goto :goto_0

    .line 73
    :cond_1
    nop

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->lookName:Ljava/lang/String;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->fileExtension:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "lookFile":Ljava/io/File;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/io/StorageOperations;->copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    .line 76
    new-instance v1, Lorg/catrobat/catroid/common/LookData;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->lookName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .local v1, "$this$apply":Lorg/catrobat/catroid/common/LookData;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-apply-LookRequestAction$getLookFromResponse$1":I
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object v1

    .line 80
    .end local v0    # "lookFile":Ljava/io/File;
    .end local v1    # "$this$apply":Lorg/catrobat/catroid/common/LookData;
    .end local v2    # "$i$a$-apply-LookRequestAction$getLookFromResponse$1":I
    :catch_0
    move-exception v0

    .line 81
    .local v0, "exception":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Couldn\'t interpret InputStream as image"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->handleInvalidFormat()V

    .line 83
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    nop

    .line 84
    nop

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponse()Ljava/io/InputStream;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/String;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    .line 101
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/content/Context;
    const/4 v1, 0x0

    .line 102
    .local v1, "$i$a$-let-LookRequestAction$handleError$1":I
    const v2, 0x7f12053a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.getString(R.string.lo\u2026_message, url, errorCode)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->showToastMessage(Ljava/lang/String;)V

    .line 103
    nop

    .line 101
    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "$i$a$-let-LookRequestAction$handleError$1":I
    nop

    .line 104
    :cond_0
    return-void
.end method

.method public handleResponse()V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getLookFromResponse()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    .line 52
    .local v0, "lookData":Lorg/catrobat/catroid/common/LookData;
    if-eqz v0, :cond_3

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/catroid/common/LookData;
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-apply-LookRequestAction$handleResponse$1":I
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->updateLookListIndex()V

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 55
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygonCalculationThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 56
    :cond_1
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 57
    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/common/LookData;->setIsWebRequest(Ljava/lang/Boolean;)V

    .line 58
    nop

    .line 52
    .end local v1    # "$this$apply":Lorg/catrobat/catroid/common/LookData;
    .end local v2    # "$i$a$-apply-LookRequestAction$handleResponse$1":I
    nop

    .line 59
    :cond_3
    return-void
.end method

.method public onCancelledCall()V
    .locals 2

    .line 131
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    .line 132
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->lookName:Ljava/lang/String;

    .line 134
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->onCancelledCall()V

    .line 135
    return-void
.end method

.method public onRequestError(Ljava/lang/String;)V
    .locals 1
    .param p1, "httpError"    # Ljava/lang/String;

    const-string v0, "httpError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    .line 127
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/WebAction;->onRequestError(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onRequestSuccess(Lokhttp3/Response;)V
    .locals 10
    .param p1, "httpResponse"    # Lokhttp3/Response;

    const-string v0, "httpResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    .line 115
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->getFileNameFromHttpResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->getFileNameFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "fileName":Ljava/lang/String;
    :goto_1
    const-string v1, "fileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v3, v1, [C

    const/4 v8, 0x0

    const/16 v9, 0x2e

    aput-char v9, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .local v2, "name":Ljava/util/List;
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$a$-let-LookRequestAction$onRequestSuccess$1":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->lookName:Ljava/lang/String;

    .line 118
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .local v1, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 119
    .local v4, "$i$a$-let-LookRequestAction$onRequestSuccess$1$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->fileExtension:Ljava/lang/String;

    .line 120
    nop

    .line 118
    .end local v1    # "type":Ljava/lang/String;
    .end local v4    # "$i$a$-let-LookRequestAction$onRequestSuccess$1$1":I
    nop

    .line 116
    .end local v2    # "name":Ljava/util/List;
    .end local v3    # "$i$a$-let-LookRequestAction$onRequestSuccess$1":I
    :cond_2
    nop

    .line 122
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/WebAction;->onRequestSuccess(Lokhttp3/Response;)V

    .line 123
    return-void
.end method

.method public restart()V
    .locals 2

    .line 107
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    .line 108
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->lookName:Ljava/lang/String;

    .line 110
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->restart()V

    .line 111
    return-void
.end method

.method public final setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public final setResponse(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/io/InputStream;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LookRequestAction;->response:Ljava/io/InputStream;

    return-void
.end method
