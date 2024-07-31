.class public abstract Lorg/catrobat/catroid/content/actions/WebAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "WebAction.kt"

# interfaces
.implements Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;,
        Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebAction.kt\norg/catrobat/catroid/content/actions/WebAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u00012\u00020\u0002:\u000256B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020%H\u0002J\u0008\u0010&\u001a\u00020%H\u0002J\u0006\u0010\'\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0010\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020\u0019H&J\u0008\u0010+\u001a\u00020%H&J\u0008\u0010,\u001a\u00020!H\u0002J\u0008\u0010-\u001a\u00020%H\u0017J\u0010\u0010.\u001a\u00020%2\u0006\u0010/\u001a\u00020\u0019H\u0017J\u0010\u00100\u001a\u00020%2\u0006\u00101\u001a\u000202H\u0017J\u0008\u00103\u001a\u00020%H\u0017J\u0008\u00104\u001a\u00020!H\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/WebAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;",
        "()V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "permissionStatus",
        "Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;",
        "requestStatus",
        "Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;",
        "getRequestStatus",
        "()Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;",
        "setRequestStatus",
        "(Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "webConnection",
        "Lorg/catrobat/catroid/web/WebConnection;",
        "act",
        "",
        "delta",
        "",
        "askForPermission",
        "",
        "checkPermission",
        "denyPermission",
        "grantPermission",
        "handleError",
        "error",
        "handleResponse",
        "interpretUrl",
        "onCancelledCall",
        "onRequestError",
        "httpError",
        "onRequestSuccess",
        "httpResponse",
        "Lokhttp3/Response;",
        "restart",
        "sendRequest",
        "PermissionStatus",
        "RequestStatus",
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
.field private formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

.field private requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private url:Ljava/lang/String;

.field private webConnection:Lorg/catrobat/catroid/web/WebConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->NOT_SENT:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    .line 54
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->UNKNOWN:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    return-void
.end method

.method private final askForPermission()V
    .locals 3

    .line 75
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->denyPermission()V

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->PENDING:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;->WEB_ACCESS_DIALOG:Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    .local v0, "params":Ljava/util/ArrayList;
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .end local v0    # "params":Ljava/util/ArrayList;
    :goto_0
    nop

    .line 82
    return-void
.end method

.method private final checkPermission()V
    .locals 2

    .line 124
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/TrustedDomainManager;->isURLTrusted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->grantPermission()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->askForPermission()V

    .line 128
    :goto_0
    return-void
.end method

.method private final interpretUrl()Z
    .locals 13

    .line 57
    const-string v0, "https://"

    .line 58
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WebAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WebAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-let-WebAction$interpretUrl$1":I
    const-string v4, "http://"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2, v0, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    move-object v0, v2

    .line 59
    :goto_1
    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    .line 62
    nop

    .line 58
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-WebAction$interpretUrl$1":I
    nop

    .line 63
    if-eqz v0, :cond_2

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "\n"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    .line 64
    .local v0, "newlineIndex":Ljava/lang/Integer;
    :goto_2
    if-nez v0, :cond_3

    :goto_3
    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    goto :goto_3

    .line 65
    :goto_4
    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 170
    nop

    .local v2, "it":I
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$a$-let-WebAction$interpretUrl$2":I
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v2    # "it":I
    .end local v3    # "$i$a$-let-WebAction$interpretUrl$2":I
    :cond_5
    iput-object v6, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_6
    const/4 v1, 0x1

    .end local v0    # "newlineIndex":Ljava/lang/Integer;
    goto :goto_5

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Couldn\'t interpret formula"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    nop

    .line 57
    .end local v0    # "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_5
    return v1
.end method

.method private final sendRequest()Z
    .locals 3

    .line 131
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->WAITING:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    .line 132
    new-instance v0, Lorg/catrobat/catroid/web/WebConnection;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/web/WebConnection;-><init>(Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    .line 134
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/web/WebConnectionHolder;->addConnection(Lorg/catrobat/catroid/web/WebConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebConnection;->sendWebRequest()V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0
.end method


# virtual methods
.method public act(F)Z
    .locals 4
    .param p1, "delta"    # F

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->interpretUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    sget-object v2, Lorg/catrobat/catroid/content/actions/WebAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    const/16 v0, 0x1ff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/WebAction;->handleError(Ljava/lang/String;)V

    .line 101
    return v1

    .line 98
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->checkPermission()V

    .line 104
    :goto_0
    nop

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    sget-object v2, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->PENDING:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 107
    return v3

    .line 110
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    sget-object v2, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->NOT_SENT:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->sendRequest()Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    const/16 v0, 0x1ad

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/WebAction;->handleError(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    sget-object v2, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->WAITING:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    if-ne v0, v2, :cond_5

    .line 115
    return v3

    .line 118
    :cond_5
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/web/WebConnectionHolder;->removeConnection(Lorg/catrobat/catroid/web/WebConnection;)V

    .line 119
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WebAction;->handleResponse()V

    .line 120
    return v1
.end method

.method public final denyPermission()V
    .locals 1

    .line 89
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->DENIED:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    .line 90
    return-void
.end method

.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getRequestStatus()Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final grantPermission()V
    .locals 1

    .line 85
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->GRANTED:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    .line 86
    return-void
.end method

.method public abstract handleError(Ljava/lang/String;)V
.end method

.method public abstract handleResponse()V
.end method

.method public onCancelledCall()V
    .locals 2

    .line 164
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/web/WebConnection;

    iput-object v1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    .line 165
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    .line 166
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->NOT_SENT:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    .line 167
    return-void
.end method

.method public onRequestError(Ljava/lang/String;)V
    .locals 1
    .param p1, "httpError"    # Ljava/lang/String;

    const-string v0, "httpError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->FINISHED:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    .line 151
    return-void
.end method

.method public onRequestSuccess(Lokhttp3/Response;)V
    .locals 1
    .param p1, "httpResponse"    # Lokhttp3/Response;

    const-string v0, "httpResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->FINISHED:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    .line 146
    return-void
.end method

.method public restart()V
    .locals 2

    .line 155
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/web/WebConnectionHolder;->removeConnection(Lorg/catrobat/catroid/web/WebConnection;)V

    .line 156
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/web/WebConnection;

    iput-object v1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->webConnection:Lorg/catrobat/catroid/web/WebConnection;

    .line 157
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    .line 158
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;->NOT_SENT:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    .line 159
    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->UNKNOWN:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WebAction;->permissionStatus:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    .line 160
    return-void
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setRequestStatus(Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->requestStatus:Lorg/catrobat/catroid/content/actions/WebAction$RequestStatus;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WebAction;->url:Ljava/lang/String;

    return-void
.end method
