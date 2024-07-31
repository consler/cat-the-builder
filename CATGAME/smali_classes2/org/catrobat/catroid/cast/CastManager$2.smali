.class Lorg/catrobat/catroid/cast/CastManager$2;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/cast/CastManager;->initGamepadListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/cast/CastManager;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/cast/CastManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 195
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager$2;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$2;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-static {v0}, Lorg/catrobat/catroid/cast/CastManager;->access$100(Lorg/catrobat/catroid/cast/CastManager;)Lorg/catrobat/catroid/stage/StageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->onBackPressed()V

    .line 200
    return-void
.end method
