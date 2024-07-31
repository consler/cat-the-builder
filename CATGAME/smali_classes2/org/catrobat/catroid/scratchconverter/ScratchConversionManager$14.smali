.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onDownloadProgress(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$progress:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 552
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$url:Ljava/lang/String;

    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 555
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$600(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 556
    .local v0, "callback":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    if-eqz v0, :cond_0

    .line 557
    iget v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$progress:I

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadProgress(ILjava/lang/String;)V

    .line 560
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

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

    .line 561
    .local v2, "cb":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    iget v3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$progress:I

    iget-object v4, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadProgress(ILjava/lang/String;)V

    .line 562
    .end local v2    # "cb":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    goto :goto_0

    .line 563
    :cond_1
    return-void
.end method
