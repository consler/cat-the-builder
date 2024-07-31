.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 432
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 435
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$400(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;

    .line 436
    .local v1, "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;->onError(Ljava/lang/String;)V

    .line 437
    .end local v1    # "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;
    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method
