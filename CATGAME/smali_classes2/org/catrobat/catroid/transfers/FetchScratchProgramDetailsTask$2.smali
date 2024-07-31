.class Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$2;
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


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    .line 137
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$2;->this$0:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$2;->this$0:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    invoke-static {v0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->access$000(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$2;->this$0:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    invoke-static {v1}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->access$000(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120305

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    return-void
.end method
