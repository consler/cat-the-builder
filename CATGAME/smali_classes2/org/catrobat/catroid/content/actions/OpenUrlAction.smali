.class public final Lorg/catrobat/catroid/content/actions/OpenUrlAction;
.super Lorg/catrobat/catroid/content/actions/WebAction;
.source "OpenUrlAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/OpenUrlAction;",
        "Lorg/catrobat/catroid/content/actions/WebAction;",
        "()V",
        "response",
        "",
        "getResponse",
        "()Ljava/lang/String;",
        "setResponse",
        "(Ljava/lang/String;)V",
        "handleError",
        "",
        "error",
        "handleResponse",
        "openUrl",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WebAction;-><init>()V

    return-void
.end method

.method private final openUrl()V
    .locals 3

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/OpenUrlAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .local v0, "browserIntent":Landroid/content/Intent;
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/stage/StageActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/stage/StageActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/OpenUrlAction;->response:Ljava/lang/String;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public handleResponse()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/OpenUrlAction;->openUrl()V

    .line 40
    return-void
.end method

.method public final setResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/OpenUrlAction;->response:Ljava/lang/String;

    return-void
.end method
