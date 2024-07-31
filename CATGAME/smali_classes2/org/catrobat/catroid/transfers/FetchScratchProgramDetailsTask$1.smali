.class Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;
.super Ljava/lang/Object;
.source "FetchScratchProgramDetailsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->fetchProjectData(J)Lorg/catrobat/catroid/common/ScratchProgramData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

.field final synthetic val$finalUserErrorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    .line 116
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;->this$0:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;->val$finalUserErrorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;->this$0:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    invoke-static {v0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->access$000(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;->val$finalUserErrorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    return-void
.end method
