.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$3;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onAuthenticationFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 201
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$3;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$3;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f12004f

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$3;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$300(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V

    .line 206
    return-void
.end method
