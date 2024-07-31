.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->conversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$cachedUTCDate:Ljava/util/Date;

.field final synthetic val$downloadCallback:Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

.field final synthetic val$downloadURL:Ljava/lang/String;

.field final synthetic val$finalLocalDownloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field final synthetic val$fullDownloadURL:Ljava/lang/String;

.field final synthetic val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;Ljava/lang/String;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 357
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$downloadURL:Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$downloadCallback:Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    iput-object p5, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$finalLocalDownloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    iput-object p6, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$fullDownloadURL:Ljava/lang/String;

    iput-object p7, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$cachedUTCDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 360
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$500(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 361
    .local v3, "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    iget-object v4, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;->onJobFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 360
    .end local v3    # "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$600(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$downloadURL:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$downloadCallback:Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$finalLocalDownloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-ne v0, v1, :cond_1

    .line 367
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download of converted project is already RUNNNING!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$fullDownloadURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onDownloadStarted(Ljava/lang/String;)V

    .line 369
    return-void

    .line 372
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Downloading missed converted project..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$cachedUTCDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;-><init>()V

    .line 375
    .local v0, "reconvertDialog":Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->setContext(Landroid/content/Context;)V

    .line 376
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$cachedUTCDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->setCachedDate(Ljava/util/Date;)V

    .line 377
    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8$1;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->setReconvertDialogCallback(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;)V

    .line 396
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "scratch_reconvert_dialog"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 397
    return-void

    .line 400
    .end local v0    # "reconvertDialog":Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;->val$fullDownloadURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$700(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V

    .line 401
    return-void
.end method
