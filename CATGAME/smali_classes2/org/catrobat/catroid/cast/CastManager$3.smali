.class Lorg/catrobat/catroid/cast/CastManager$3;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 205
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager$3;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$3;->this$0:Lorg/catrobat/catroid/cast/CastManager;

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1, p2}, Lorg/catrobat/catroid/cast/CastManager;->access$200(Lorg/catrobat/catroid/cast/CastManager;Landroid/widget/ImageButton;Landroid/view/MotionEvent;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method
