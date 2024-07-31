.class Lorg/catrobat/catroid/pocketmusic/ScrollController$4;
.super Ljava/lang/Object;
.source "ScrollController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/pocketmusic/ScrollController;->initializePlayLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/pocketmusic/ScrollController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 117
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    :goto_0
    return-void
.end method
