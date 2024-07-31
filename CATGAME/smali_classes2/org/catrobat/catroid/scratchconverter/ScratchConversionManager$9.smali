.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 413
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 416
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    if-eqz v0, :cond_1

    .line 417
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$500(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 418
    .local v4, "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    iget-object v5, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v4, v5}, Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;->onJobFailed(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 417
    .end local v4    # "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 421
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    const v3, 0x7f12030e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    .end local v0    # "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 423
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f120307

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 424
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$300(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V

    .line 426
    :goto_1
    return-void
.end method
