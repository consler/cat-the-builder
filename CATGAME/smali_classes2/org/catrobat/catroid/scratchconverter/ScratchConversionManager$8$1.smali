.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    .line 377
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadExistingProgram()V
    .locals 2

    .line 380
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v0, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v1, v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$fullDownloadURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$700(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onReconvertProgram()V
    .locals 7

    .line 385
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v1, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v0, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v0, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v0, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;Z)V

    .line 386
    return-void
.end method

.method public onUserCanceledConversion()V
    .locals 5

    .line 390
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v0, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$800(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Lorg/catrobat/catroid/scratchconverter/Client;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v1, v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client;->onUserCanceledConversion(J)V

    .line 391
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v0, v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v1, v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$500(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 392
    .local v3, "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    iget-object v4, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;->this$1:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    iget-object v4, v4, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;->onUserCanceledJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 391
    .end local v3    # "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method
