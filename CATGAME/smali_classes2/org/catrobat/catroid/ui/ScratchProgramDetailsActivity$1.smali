.class Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;
.super Ljava/lang/Object;
.source "ScratchProgramDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    .line 127
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 130
    invoke-static {}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->access$000()Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->getNumberOfJobsInProgress()I

    move-result v0

    .line 131
    .local v0, "numberOfJobsInProgress":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 132
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100019

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 132
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->access$100(Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;)Lorg/catrobat/catroid/common/ScratchProgramData;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->access$200(Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;Lorg/catrobat/catroid/common/ScratchProgramData;)V

    .line 139
    :goto_0
    return-void
.end method
