.class public final synthetic Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$StageDialog$asFM-a52hQSrSDQ6dVutHGLGFp4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/dialogs/StageDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$StageDialog$asFM-a52hQSrSDQ6dVutHGLGFp4;->f$0:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    return-void
.end method


# virtual methods
.method public final screenshotSaved(Z)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$StageDialog$asFM-a52hQSrSDQ6dVutHGLGFp4;->f$0:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->lambda$makeScreenshot$0$StageDialog(Z)V

    return-void
.end method
