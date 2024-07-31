.class public final Lorg/catrobat/catroid/content/actions/StartListeningAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "StartListeningAction.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/StartListeningAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u00012\u00020\u0002:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0002J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/StartListeningAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "()V",
        "listeningRequested",
        "",
        "spokenWordsReceived",
        "userVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "getUserVariable",
        "()Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "setUserVariable",
        "(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V",
        "act",
        "delta",
        "",
        "onResult",
        "",
        "spokenWords",
        "",
        "requestStartListening",
        "restart",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/content/actions/StartListeningAction$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listeningRequested:Z

.field private spokenWordsReceived:Z

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/StartListeningAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/StartListeningAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->Companion:Lorg/catrobat/catroid/content/actions/StartListeningAction$Companion;

    .line 35
    const-class v0, Lorg/catrobat/catroid/content/actions/StartListeningAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final requestStartListening()V
    .locals 1

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->listeningRequested:Z

    .line 63
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 44
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->listeningRequested:Z

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/StartListeningAction;->requestStartListening()V

    .line 48
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->spokenWordsReceived:Z

    return v0
.end method

.method public final getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "spokenWords"    # Ljava/lang/String;

    const-string v0, "spokenWords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->spokenWordsReceived:Z

    .line 69
    return-void
.end method

.method public restart()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->listeningRequested:Z

    .line 53
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->spokenWordsReceived:Z

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 55
    return-void
.end method

.method public final setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StartListeningAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method
