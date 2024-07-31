.class public final synthetic Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;->f$0:Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;->f$0:Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->lambda$getView$0$DronePlayLedAnimationBrick(Landroid/content/Context;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
