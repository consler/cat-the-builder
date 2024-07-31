.class public Lorg/catrobat/catroid/content/actions/SetNfcTagAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SetNfcTagAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private firstExecution:Z

.field private message:Landroid/nfc/NdefMessage;

.field private nfcNdefMessage:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private nfcTagNdefSpinnerSelection:I

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->firstExecution:Z

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 4
    .param p1, "delta"    # F

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->nfcNdefMessage:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    iget-boolean v2, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->firstExecution:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 70
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->nfcTagNdefSpinnerSelection:I

    invoke-static {v0, v2}, Lorg/catrobat/catroid/nfc/NfcHandler;->createMessage(Ljava/lang/String;I)Landroid/nfc/NdefMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->message:Landroid/nfc/NdefMessage;

    .line 72
    const-class v0, Lorg/catrobat/catroid/stage/StageActivity;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->message:Landroid/nfc/NdefMessage;

    invoke-static {v2}, Lorg/catrobat/catroid/stage/StageActivity;->setNfcTagMessage(Landroid/nfc/NdefMessage;)V

    .line 74
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    iput-boolean v3, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->firstExecution:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "delta":F
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    .restart local p1    # "delta":F
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->TAG:Ljava/lang/String;

    const-string v3, "No new message was added to the Stage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return v1

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getNfcTagMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->message:Landroid/nfc/NdefMessage;

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public restart()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->firstExecution:Z

    .line 61
    return-void
.end method

.method public setNfcNdefMessage(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "nfcNdefMessage"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->nfcNdefMessage:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 51
    return-void
.end method

.method public setNfcTagNdefSpinnerSelection(I)V
    .locals 0
    .param p1, "spinnerSelection"    # I

    .line 46
    iput p1, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->nfcTagNdefSpinnerSelection:I

    .line 47
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 55
    return-void
.end method
