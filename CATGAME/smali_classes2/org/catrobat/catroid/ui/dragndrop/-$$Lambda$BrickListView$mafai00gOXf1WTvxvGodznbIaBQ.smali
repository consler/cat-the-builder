.class public final synthetic Lorg/catrobat/catroid/ui/dragndrop/-$$Lambda$BrickListView$mafai00gOXf1WTvxvGodznbIaBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/dragndrop/-$$Lambda$BrickListView$mafai00gOXf1WTvxvGodznbIaBQ;->f$0:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/-$$Lambda$BrickListView$mafai00gOXf1WTvxvGodznbIaBQ;->f$0:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->lambda$highlightMovingItem$0$BrickListView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
