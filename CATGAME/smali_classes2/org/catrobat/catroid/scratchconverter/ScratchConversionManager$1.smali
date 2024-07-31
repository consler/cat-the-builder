.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onConnectionClosed(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$exceptionMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 170
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->val$exceptionMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->val$exceptionMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$100(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f120222

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$300(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V

    .line 182
    return-void
.end method
