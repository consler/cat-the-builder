.class Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;
.super Landroid/os/AsyncTask;
.source "StageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/dialogs/StageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishThreadAndDisposeTexturesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/StageDialog;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;->this$0:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/ui/dialogs/StageDialog;Lorg/catrobat/catroid/ui/dialogs/StageDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/ui/dialogs/StageDialog;
    .param p2, "x1"    # Lorg/catrobat/catroid/ui/dialogs/StageDialog$1;

    .line 252
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;-><init>(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 255
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;->this$0:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->access$100(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)Lorg/catrobat/catroid/stage/StageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->manageLoadAndFinish()V

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method
