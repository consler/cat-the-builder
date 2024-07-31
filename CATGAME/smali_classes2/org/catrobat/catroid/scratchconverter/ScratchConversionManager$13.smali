.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onDownloadStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 534
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 537
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$600(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 538
    .local v0, "callback":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadStarted(Ljava/lang/String;)V

    .line 542
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$900(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 543
    .local v2, "cb":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    iget-object v3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadStarted(Ljava/lang/String;)V

    .line 544
    .end local v2    # "cb":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    goto :goto_0

    .line 545
    :cond_1
    return-void
.end method
