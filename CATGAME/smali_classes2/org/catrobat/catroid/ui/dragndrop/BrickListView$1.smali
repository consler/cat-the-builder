.class Lorg/catrobat/catroid/ui/dragndrop/BrickListView$1;
.super Ljava/lang/Object;
.source "BrickListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->swapListItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    .line 298
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView$1;->this$0:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 310
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 305
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView$1;->this$0:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateViews()V

    .line 306
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 301
    return-void
.end method
